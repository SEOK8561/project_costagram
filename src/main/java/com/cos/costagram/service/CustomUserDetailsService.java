package com.cos.costagram.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.cos.costagram.model.User;
import com.cos.costagram.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userRepository.findByUsername(username);
	
		CustomUserDetails userDetails = null;
		if(user != null) {
			userDetails = new CustomUserDetails();
			userDetails.setUser(user);
			
		}else {
			throw new UsernameNotFoundException("유저를 찾을 수 없습니다. "+username);
		}
		return userDetails;
	}
}
