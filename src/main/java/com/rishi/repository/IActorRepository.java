package com.rishi.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rishi.model.Actor;

public interface IActorRepository extends JpaRepository<Actor, Integer> {

}
