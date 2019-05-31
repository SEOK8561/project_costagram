package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.costagram.model.Image;

public interface ImageRepository extends JpaRepository<Image, Integer>{
	
	public List<Image> findByUserIdOrderByCreateDateDesc(int userId);
	
	// not follow imageList (2개씩)
		@Query(value="select id, caption, createDate, fileName, filePath, location, mimeType, updateDate, userId from (select id, caption, createDate, fileName, filePath, location, mimeType, updateDate, userId, rank() over (partition by userId order by id) as rnk  from image where userId in (select id from user where id not in (select toUser from follow where fromUser = ?1)) and userId != ?1) as img where rnk < 3 order by id desc limit 20", nativeQuery = true)
		public List<Image> findByNotFollowImageList(int fromUser);
}
