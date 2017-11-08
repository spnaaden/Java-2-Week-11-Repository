package edu.dmacc.spring.eventmanagement;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class EventDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("WeekElevenProject");
	
	public void insertUser(Event eventToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(eventToAdd);
		em.getTransaction().commit();
		em.close();
		//emfactory.close();
			
	}
	
	public List<Event> getAllEvents() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Event u";
		TypedQuery<Event> typedQuery = em.createQuery(q, Event.class);
		List<Event> all = typedQuery.getResultList();
		return all;
	}
	
	
	



}
