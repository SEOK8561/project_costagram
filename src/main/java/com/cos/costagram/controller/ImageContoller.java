package com.cos.costagram.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.Tag;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.TagRepository;
import com.cos.costagram.service.CustomUserDetails;
import com.cos.costagram.util.UtilCos;

@Controller
public class ImageContoller {

	@Autowired
	private ImageRepository imageRepository;

	@Autowired
	private TagRepository tagRepository;

	@Autowired
	private FollowRepository followRepository;

	@GetMapping("/home")
	public String home() {
		return "home";
	}

	@GetMapping("/images")
	public String image(@AuthenticationPrincipal CustomUserDetails userDetail, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page, HttpServletRequest request) {

		// 1. User (One)
		User user = userDetail.getUser();
		System.out.println("user.getId() : " + user.getId());

		// HttpSession session = request.getSession();
		// session.setAttribute("user", user);
		// 2. User:Follow (List)
		List<Follow> followList = followRepository.findByFromUserId(user.getId());

		// 3. User:Follow:Image (List) 4. Follow:Image:Like(count) (One)
		List<Image> imageList = new ArrayList<>();

		
		for (Follow f : followList) {
			List<Image> list = imageRepository.findByUserIdOrderByCreateDateDesc(f.getToUser().getId());
			for (Image i : list) {
				imageList.add(i);
			}
		}
		System.out.println("imageList Size : " + imageList.size());
		// 4. 페이징 처리
		int maxPage = 0;
		int start = (page - 1) * 3;
		int end = page * 3;
		int mod = imageList.size() % 3; // 0
		if (mod == 0) {
			maxPage = imageList.size() / 3; // 2
		} else {
			maxPage = imageList.size() / 3 + 1;
			if (page == maxPage) {
				end = start + mod;
			}
		}

		for (Image i : imageList) {
			System.out.println(i.getId());
		}
		System.out.println("=================");

		Collections.sort(imageList);

		for (Image i : imageList) {
			System.out.println(i.getId());
		}
		imageList = imageList.subList(start, end); // 0 3

		// 5. Follow한 userList 필요, userList에 follower유무 넣어주기 
		
		
		// 6. Model에 담아주기
		
		model.addAttribute("user", user);
		model.addAttribute("imageList", imageList);
		model.addAttribute("page", page);
		model.addAttribute("maxPage", maxPage);

		return "/images/image";
	}

	@PostMapping("/images/uploadProc")
	public String imageUpload(@AuthenticationPrincipal CustomUserDetails userDetail,
			@RequestParam("file") MultipartFile file, String caption, String location, String tags) throws IOException {

		UUID uuid = UUID.randomUUID();
		String uuidFileName = uuid + "_" + file.getOriginalFilename();
		
		Path filePath = Paths.get(UtilCos.getResourcePath() + uuidFileName);

		Files.write(filePath, file.getBytes());
		User user = userDetail.getUser();

		List<String> tagList = UtilCos.tagParser(tags);

		Image image = Image.builder()
				.caption(caption)
				.location(location)
				.user(user)
				.mimeType(file.getContentType())
				.fileName(uuidFileName)
				.filePath("/image/" + uuidFileName)
				.build();

		imageRepository.save(image);

		for (String t : tagList) {
			Tag tag = new Tag();
			tag.setName(t);
			tag.setImage(image);
			tag.setUser(user);
			tagRepository.save(tag);
			image.getTags().add(tag); // DB에 영향을 미치지 않음.
		}

		return "redirect:/images/";
	}

	@GetMapping("/images/upload")
	public String imageUpload() {
		return "/images/upload";
	}
}