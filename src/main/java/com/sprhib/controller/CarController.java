package com.sprhib.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sprhib.model.Cars;
import com.sprhib.service.CarService;

@Controller
@RequestMapping(value="/car")
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
		ModelAndView modelAndView = new ModelAndView("add-car-form");
		modelAndView.addObject("car", new Cars());
		return modelAndView;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addingTeam(@ModelAttribute Cars car) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		carService.addTeam(car);
		
		String message = "Carro adicionado com sucesso!!!";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/list")
	public ModelAndView listOfTeams() {
		ModelAndView modelAndView = new ModelAndView("list-of-cars");
		
		List<Cars>  cars = carService.getCars();
		modelAndView.addObject("teams", cars);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editTeamPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("edit-car-form");
		Cars car = carService.getTeam(id);
		modelAndView.addObject("team",car);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView edditingTeam(@ModelAttribute Cars team, @PathVariable Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		
		carService.updateTeam(team);
		
		String message = "Time foi editado com sucesso!!!";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteTeam(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		carService.deleteTeam(id);
		String message = "O Carro foi Deletado com sucesso";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
