package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entity.Note;
import com.entity.UserCred;

@Component
public class NoteDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	UserCred userCred = new UserCred();
	
	public String email = userCred.getEmailId();

	
//	method for saving and updating our notes
	@Transactional
	public void createNote(Note note)
	{
		
		hibernateTemplate.saveOrUpdate(note);
		
	}
	
	
//	method for getting all notes
	public List<Note> getNotes()
	{
//		Here we are getting all objects of Note class and stored it into a List and return that list
		List<Note> notes = this.hibernateTemplate.loadAll(Note.class);
		
		return notes;
	}
	
	
//	method for delete single note
	@Transactional
	public void deleteNote(int Nid)
	{
//		First we are getting note object and stored it into n object
		Note n = this.hibernateTemplate.load(Note.class, Nid);
		
		this.hibernateTemplate.delete(n);
	}
	
	
//	method for getting single note
	public Note getNote(int Nid)
	{
		
		return this.hibernateTemplate.get(Note.class, Nid);
	}
	
	public Note getNote(String emailId)
	{
		
		return this.hibernateTemplate.get(Note.class, emailId);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
