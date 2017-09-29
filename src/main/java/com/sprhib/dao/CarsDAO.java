package com.sprhib.dao;

import java.util.List;

import com.sprhib.model.Cars;

public interface CarsDAO {
	
	public void addCar(Cars car);
	public void updateCar(Cars car);
	public Cars getCar(int id);
	public void deleteCar(int id);
	public List<Cars> getCar();

}
