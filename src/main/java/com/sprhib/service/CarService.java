package com.sprhib.service;

import java.util.List;

import com.sprhib.model.Cars;

public interface CarService {
	
	public void addTeam(Cars car);
	public void updateTeam(Cars car);
	public Cars getTeam(int id);
	public void deleteTeam(int id);
	public List<Cars> getCars();

}
