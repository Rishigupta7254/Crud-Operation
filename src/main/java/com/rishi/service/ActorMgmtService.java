package com.rishi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rishi.model.Actor;
import com.rishi.repository.IActorRepository;
@Service
public class ActorMgmtService implements IActorMgmtService {

	@Autowired
	private IActorRepository repo;
	
	@Override
	public List<Actor> getAllActor() {

		return repo.findAll();
	}

	@Override
	public String registerActor(Actor actor) {
		repo.save(actor);
		return "Actor is saved successfully";
	}

	@Override
	public Actor getActorById(Integer id) {
		
		return repo.findById(id).orElseThrow() ;
	}
	

	@Override
	public String updateActor(Actor actor) {
		repo.save(actor);
		return "Actor updated ";
	}

	@Override
	public String deleteActor(Integer id) {
	repo.deleteById(id);
		return "Actor deleted";
	}

}
