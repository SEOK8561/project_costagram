package com.cos.costagram.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.costagram.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	public User findByUsername(String username);
	
	/*
	 * @Query(value = "select count(*) from user where password = '?1'", nativeQuery
	 * = true) public int findByPassword(int passord);
	 */
}
