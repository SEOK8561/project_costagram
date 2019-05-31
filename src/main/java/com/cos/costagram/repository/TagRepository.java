package com.cos.costagram.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Tag;

public interface TagRepository extends JpaRepository<Tag, Integer>{

}
