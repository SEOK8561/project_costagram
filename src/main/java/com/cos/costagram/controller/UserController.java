package com.cos.costagram.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.Likes;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.LikesRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@Controller
public class UserController {
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private LikesRepository likesRepository;
	
	@Autowired
	private ImageRepository imageRepository;
	
	@Autowired
	private FollowRepository followRepository;
	
	@GetMapping("/")
	public String home() {
		return "/auth/join";
	}
	
	@GetMapping("/auth/login")
	public String authLogin() {
		return "/auth/login";
	}
	
	@PostMapping("/app/login")
	public @ResponseBody int appLogin() {
		
		
		return -1;
	}
	
	@GetMapping("/auth/join")
	public String authJoin() {
		return "/auth/join";
	}
	
	@PostMapping("/passwordUpdate")
	public String pwd(@AuthenticationPrincipal CustomUserDetails userDetail, String new_pwd) {
		User oldUser = userDetail.getUser();
		new_pwd=passwordEncoder.encode(new_pwd);
		oldUser.setPassword(new_pwd);
		oldUser.setUpdateDate(LocalDate.now());
		userDetail.getUser().setPassword(new_pwd);
		userRepository.save(oldUser);

		//세션에서 현재 유저정보 가져오기
		
		System.out.println("비밀번호 완료");
		return "/user/change";
	}
	@PostMapping("/passwordCheck")
	public @ResponseBody String follow(String old_pwd, @AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		System.out.println("old:"+old_pwd);
		User oldUser = userDetail.getUser();
		if(passwordEncoder.matches(old_pwd, oldUser.getPassword())) {
			return "ok";
		}
		return "fail";
	}
	
	@PostMapping("/auth/create")
	public String create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return "/auth/login";
	}
	
	@GetMapping("/user/{id}")
	public String userDetail(@PathVariable int id, Model model, @AuthenticationPrincipal CustomUserDetails userDetail) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		System.out.println("userNamed:"+userDetail.getUsername());
		//유저정보(username, name, bio, website)
		User user = userO.get();
		Optional<User> imageUserO = userRepository.findById(id);
		User imageUser = imageUserO.get();
		//이미지정보+좋아요카운트정보(User:Image), (User:Image.count())
		List<Image> imageList = imageRepository.findByUserIdOrderByCreateDateDesc(id);
		int imageCount = imageList.size();
		for(Image i : imageList) { //1, 3
			List<Likes> likeList = likesRepository.findByImageId(i.getId());
			i.setLikeCount(likeList.size());
		}
		
		//팔로우정보(User:Follow:User.count())
		List<Follow> followList = followRepository.findByFromUserId(id);
		
		//List<User> followUserList = 
		
		int followCount = followList.size();
		//팔로워정보(User:Follower:User.count())
		List<Follow> followerList = followRepository.findByToUserId(id);
		
		List<Integer> followIdList = new ArrayList<Integer>();
		for(Follow f : followList) {
			followIdList.add(f.getToUser().getId());
		}		
		
		List<Integer> followerIdList = new ArrayList<Integer>();
		for(Follow f : followerList) {
			followerIdList.add(f.getFromUser().getId());
		}
		
		//기준은 follower를 기준으로 for문을 돌리고 follow했는지 체크
		//그리고 체크된 애들은 matpal 속성에 set해주기
		for(Follow f1 : followerList) {
			for(Follow f2 : followList ) {
				//맞팔 유무 확인
				if(f1.getFromUser().getId() == f2.getToUser().getId()) {
					f1.setMatpal(true);
				}
			}
		}
		
		int followerCount = followerList.size();

		//팔로우 유무 체크
		int followCheck = followRepository.findByFromUserIdAndToUserId(user.getId(), id);
		
		model.addAttribute("followCheck", followCheck);
		model.addAttribute("user", user);
		model.addAttribute("imageUser", imageUser);
		model.addAttribute("imageList", imageList);
		model.addAttribute("imageCount", imageCount);
		model.addAttribute("followCount", followCount);
		model.addAttribute("followerCount", followerCount);
		model.addAttribute("followList", followList);
		model.addAttribute("followerList", followerList);
		return "/user/user";
	}
	
	@GetMapping("/explore")
	public String explore(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		int fromUser = userDetail.getUser().getId();
		List<Image> exploreList = imageRepository.findByNotFollowImageList(fromUser);
		model.addAttribute("exploreList", exploreList);
		model.addAttribute("user", userDetail.getUser());
		return "/user/explore";
	}
	
	@GetMapping("/user/edit")
	  public String edit(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		model.addAttribute("user", userDetail.getUser());
	    return "/user/edit";
	  }
	  
	  @GetMapping("/user/change")
	  public String change(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		  model.addAttribute("user", userDetail.getUser());
	    return "/user/change";
	  }
	  
	  @GetMapping("/user/contact_history")
	  public String contactHistory(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		  model.addAttribute("user", userDetail.getUser());
	    return "/user/contact_history";
	  }
	  
	  @GetMapping("/user/manage_access")
	  public String manageAccess(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		  model.addAttribute("user", userDetail.getUser());
	    return "/user/manage_access";
	  }
	  
	  @GetMapping("/user/privacy_and_security")
	  public String privacyAndSecurity(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		  model.addAttribute("user", userDetail.getUser());
	    return "/user/privacy_and_security";
	  }
	  
	  @GetMapping("/user/settings")
	  public String settings(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
	    
		  model.addAttribute("user", userDetail.getUser());
	    return "/user/settings";
	  }
}
