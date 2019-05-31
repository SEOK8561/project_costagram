package com.cos.costagram.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@Controller
@RequestMapping("/dummy")
public class DummyController {
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ImageRepository imageRepository;
	
	@Autowired
	private FollowRepository followRepository;
	
	@PostMapping("/create")
	public @ResponseBody User create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return user;
	}
	
	@GetMapping("/images")
	public @ResponseBody List<Image> image(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		
		//1. User (One)
		User user = userDetail.getUser();
		System.out.println("user.getId() : " +user.getId());
		
		//2. User:Follow (List)
		List<Follow> followList = followRepository.findByFromUserId(user.getId());

		//3. User:Follow:Image (List) 4. Follow:Image:Like(count) (One)
		List<Image> imageList = new ArrayList<>();

		for(Follow f : followList) {
			List<Image> list = imageRepository.findByUserIdOrderByCreateDateDesc(f.getToUser().getId());
			for(Image i : list) {
				imageList.add(i);
			}	
		}
		
		//4. Model에 담아주기
		model.addAttribute("user", user);
		model.addAttribute("imageList", imageList);

		return imageList;
	}
	
	//5개씩 찾는 이미지
	@GetMapping("/image/page")
	public Page<Image> imageList(@PageableDefault(sort= {"id"}, direction = Direction.DESC, size = 5) Pageable pageable){
		Page<Image> list = imageRepository.findAll(pageable);
		return list;
	}
}
