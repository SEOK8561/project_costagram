package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.cos.costagram.model.Follow;

public interface FollowRepository extends JpaRepository<Follow, Integer> {

	// 팔로우 리스트
	public List<Follow> findByFromUserId(int fromUser);

	// 팔로워 리스트
	public List<Follow> findByToUserId(int toUser);

	// 팔로우, 언팔로우 유무
	@Query(value = "select count(*) from follow where fromUser = ?1 and toUser = ?2", nativeQuery = true)
	public int findByFromUserIdAndToUserId(int fromUser, int toUser);

	// unFollow
	@Transactional
	public void deleteByFromUserIdAndToUserId(int fromUser, int toUser);
}
