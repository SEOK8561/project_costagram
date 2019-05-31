package com.cos.costagram.model;

import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.hibernate.annotations.CreationTimestamp;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;


@Entity
@Data
public class Tag {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="userId")
	@JsonIgnoreProperties({"username", "password", "name", "website", "bio", "email", "phone", "gender", "createDate", "updateDate"})
	private User user;	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="imageId")
	@JsonBackReference
	private Image image;

	@CreationTimestamp
	private LocalDate createDate;
	@CreationTimestamp
	private LocalDate updateDate;

}
