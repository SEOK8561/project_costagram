package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.cos.costagram.model.Likes;

public interface LikesRepository extends JpaRepository<Likes, Integer>{
	
	public List<Likes> findByImageId(int imageId);
	@Modifying
	@Transactional
	@Query(value="delete from likes where imageId = ?1 and userId = ?2", nativeQuery=true)
	public void deleteLike(int imageId, int userId);
}
