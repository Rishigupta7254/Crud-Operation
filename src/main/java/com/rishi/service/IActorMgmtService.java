package com.rishi.service;

import java.util.List;

import com.rishi.model.Actor;

public interface IActorMgmtService {
	
public List<Actor> getAllActor();
	
	public String registerActor(Actor actor);
	
	public Actor getActorById(Integer id);
	
	public String updateActor(Actor actor);
	
	public String deleteActor(Integer id);
	

}
