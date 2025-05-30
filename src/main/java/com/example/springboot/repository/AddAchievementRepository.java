package com.example.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.springboot.model.AddAchievement;

@Repository
public interface AddAchievementRepository extends JpaRepository<AddAchievement, Long> {
	
	
	public  AddAchievement findById(long id); 
	
	List<AddAchievement> findByRegisterId(String registerId);
	
	 
}