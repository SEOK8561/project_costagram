package com.cos.costagram.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.costagram.model.Image;
import com.cos.costagram.model.Likes;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.LikesRepository;
import com.cos.costagram.service.CustomUserDetails;

@Controller
public class LikesContoller {
	
	@Autowired
	private LikesRepository likesRepository;
	
	@Autowired
	private ImageRepository imageRepository;
	
	@PostMapping("/like/image/{id}")
	public @ResponseBody String like(@PathVariable int id, @AuthenticationPrincipal CustomUserDetails userDetail) {
		//User, Image
		Optional<Image> imageO = imageRepository.findById(id);
		Image image = imageO.get();
		Likes like = new Likes();
		
		like.setImage(image);
		like.setUser(userDetail.getUser());
		likesRepository.save(like);
		return "like ok";
	}
	
	@PostMapping("/unlike/image/{id}")
	public @ResponseBody String unlike(@PathVariable int id, @AuthenticationPrincipal CustomUserDetails userDetail) {
		//User, Image
		System.out.println("imageId : "+id);
		System.out.println("userId : "+userDetail.getUser().getId());
		likesRepository.deleteLike(id, userDetail.getUser().getId());
		return "unlike ok";
	}
}