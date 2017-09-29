package com.sprhib.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.Cars;

@Repository
public class CarsDAOImpl implements  CarsDAO{

    
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addCar(Cars car) {
		getCurrentSession().save(car);
	}

	public void updateCar(Cars car) {
		Cars carToUpdate = getCar(car.getId());
		carToUpdate.setName(car.getName());
		carToUpdate.setRating(car.getRating());
		getCurrentSession().update(carToUpdate);
		
	}

	public Cars GetCar(int id) {
		Cars cars = (Cars) getCurrentSession().get(Cars.class, id);
		return cars;
	}

	public void deleteCar (int id) {
		Cars car = getCar(id);
		if (car != null)
			getCurrentSession().delete(car);
	}

	@SuppressWarnings("unchecked")
	public List<Cars> getCars() {
		return getCurrentSession().createQuery("from Team").list();
	}

    @Override
    public Cars getCar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cars> getCar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
