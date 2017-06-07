package com.kdn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.TeacherService;

@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginForm(Model model, HttpSession session, int id, String pw){
		teacherService.login(id, pw);
		session.setAttribute("id", id);
		return "index";
	}
	
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("id");
		return "index";
	}
}
