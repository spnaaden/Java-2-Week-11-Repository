package edu.dmacc.spring.eventmanagement;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="events")
public class Event {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int eventid;
	private String eventName;
	private String eventDescription;
	private String eventDate;
	private String eventStartTime;
	private boolean eventDuringDaytime;
	private int eventLastingHours;
	private String eventAddress;
	private String eventCity;
	private String eventState;
	
	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getEventStartTime() {
		return eventStartTime;
	}
	public void setEventStartTime(String eventStartTime) {
		this.eventStartTime = eventStartTime;
	}
	public boolean isEventDuringDaytime() {
		return eventDuringDaytime;
	}
	public void setEventDuringDaytime(boolean eventDuringDaytime) {
		this.eventDuringDaytime = eventDuringDaytime;
	}
	public int getEventLastingHours() {
		return eventLastingHours;
	}
	public void setEventLastingHours(int eventLastingHours) {
		this.eventLastingHours = eventLastingHours;
	}
	public String getEventAddress() {
		return eventAddress;
	}
	public void setEventAddress(String eventAddress) {
		this.eventAddress = eventAddress;
	}
	public String getEventCity() {
		return eventCity;
	}
	public void setEventCity(String eventCity) {
		this.eventCity = eventCity;
	}
	public String getEventState() {
		return eventState;
	}
	public void setEventState(String eventState) {
		this.eventState = eventState;
	}
	
}
