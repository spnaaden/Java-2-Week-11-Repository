package edu.dmacc.spring.eventmanagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
	@Autowired EventDao dao;

private static final String[ ] states = { "Illinois", "Indiana", "Iowa", "Kansas", "Michigan", "Minnesota", 
		"Missouri", "Nebraska", "North Dakota", "Ohio", "South Dakota", "Wisconsin"};

private static final int[] hours = {1, 2, 3, 4, 5};
	
	
@RequestMapping(value = "/form")
public ModelAndView event( ){
	ModelAndView modelAndView = new ModelAndView( );
	
	modelAndView.setViewName("eventForm");
	modelAndView.addObject("event", new Event( ));
	modelAndView.addObject("states", states);
	modelAndView.addObject("hours", hours);
	
	return modelAndView;
	}

@RequestMapping(value = "/result")
public ModelAndView processUser(Event event){
	ModelAndView modelAndView = new ModelAndView();
	dao.insertUser(event);
	modelAndView.setViewName("eventResult");
	modelAndView.addObject("e", event);
	return modelAndView;
}

@RequestMapping(value = "/viewAll")
public ModelAndView viewAll( ){
	ModelAndView modelAndView = new ModelAndView();
	List<Event> allEvents = dao.getAllEvents();
	modelAndView.setViewName("viewSchedule");
	modelAndView.addObject("all", allEvents);
	return modelAndView;
}

@Bean
public EventDao dao(){
	EventDao bean = new EventDao();
	return bean;
}


		
}


