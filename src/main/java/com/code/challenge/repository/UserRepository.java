package com.code.challenge.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.code.challenge.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	Optional<User> findByName(String username);
}
