package com.sprhib.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sprhib.dao.CarsDAO;
import com.sprhib.model.Cars;

@Service
@Transactional
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarsDAO carsDAO;

	public void addTeam(Cars car) {
		carsDAO.addCar(car);		
	}

	public void updateTeam(Cars car) {
		carsDAO.updateCar(car);
	}

	public Cars getTeam(int id) {
		return carsDAO.getCar(id);
	}

	public void deleteTeam(int id) {
		carsDAO.deleteCar(id);
	}

	public List<Cars> getTeams() {
		return carsDAO.getCar();
	}

    @Override
    public List<Cars> getCars() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
