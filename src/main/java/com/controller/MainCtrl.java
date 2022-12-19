package com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.NoteDao;
import com.dao.UserDaoInt;
import com.entity.Note;
import com.entity.UserCred;
import com.service.UserService;

@Controller
public class MainCtrl {
	
	@Autowired
	private NoteDao noteDAO;
	
	@Autowired
	private UserService userService;
	
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public UserService getUserService() {
		return userService;
	}
	
	
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	UserCred userCred = new UserCred();
	
	public String email = userCred.getEmailId();
	
	
	public String getEmail()
	{
		return email;
	}
	
//	show addNotes page
	@RequestMapping("/addNotes/{emailId}")
	public String AddNote(@PathVariable("emailId") String emailId, Model m)
	{
		System.out.println(email+"==email");
		Note n = this.noteDAO.getNote(emailId);
		m.addAttribute("title", "Add Note");
		m.addAttribute("emailId", email);
//		m.addAttribute("noted", n);
		
		return "addNotes";
	}
	
	
	
//	handling save note and update note
	@RequestMapping(value="/SaveUpdate", method = RequestMethod.POST)
	public RedirectView handleNotes(@ModelAttribute Note note, HttpServletRequest request)
	{
		
		System.out.println(note+"note in cont");
		
//		calling save method by dao class object for saving in database
		
		noteDAO.createNote(note);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/myNotes");
		return redirectView;
	}
	
//	showing My Notes page
	@RequestMapping("/myNotes")
	public String MyNotes(Model m)
	{
		List<Note> notes = noteDAO.getNotes();
		m.addAttribute("Notes", notes);
		
		return "myNotes";
	}
	
	
//	delete handler
	@RequestMapping("/delete/{noteID}")
	public RedirectView deleteNote(@PathVariable("noteID") int noteID ,HttpServletRequest request)
	{
		this.noteDAO.deleteNote(noteID);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/myNotes");
		return redirectView;
	}
	
	
	@RequestMapping("/update/{noteID}")
	public String updateNote(@PathVariable("noteID") int Nid, Model model)
	{
		
//		getting our note
		Note note1 = this.noteDAO.getNote(Nid);
		
//		and add to this update page
		model.addAttribute("note", note1);
		
		return "updateNotes";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
