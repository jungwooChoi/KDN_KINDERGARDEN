package com.kdn.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.BoardService;
import com.kdn.model.biz.IntroduceService;
import com.kdn.model.biz.MenuService;
import com.kdn.model.biz.TeacherService;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Introduce;
import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Teacher;

@Controller
public class IntroduceController 
{
	/*
	 * Error 처리
	 * 
	 * ExceptionHandler Controller에서 오류가 발생하면 처리하는 기능
	 * */
	@ExceptionHandler
	public ModelAndView hander(Exception e)
	{
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		return model;
	}
	
	@Autowired
	private IntroduceService introduceService;
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping(value="introduceclass.do", method=RequestMethod.GET)
	public String introduceClass(Model model)
	{
		model.addAttribute("content", "introduce/introduceclass.jsp");
		return "index";
	}
	
	@RequestMapping(value="introduceteacher.do", method=RequestMethod.GET)
	public String introduceteacher(Model model)
	{
		List<Teacher> list=teacherService.searchAll();
		model.addAttribute("teacherList",list );
		model.addAttribute("content", "introduce/introduceteacher.jsp");
		return "index";
	}
	
	@RequestMapping(value="introducekindergarden.do", method=RequestMethod.GET)
	public String introducekindergarden(Model model)
	{
		model.addAttribute("content", "introduce/introducekindergarden.jsp");
		return "index";
	}

	
	@RequestMapping(value ="introduce.do", method = RequestMethod.GET)
	public String introduce(Model model)
	{
		model.addAttribute("content", "introduce/introducemain.jsp");
		return "index";
	}
	
}