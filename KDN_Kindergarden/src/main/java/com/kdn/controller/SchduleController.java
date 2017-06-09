package com.kdn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.ScheduleService;
import com.kdn.model.domain.Schedule;

@Controller
public class SchduleController {
	
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}	
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="pop.do", method=RequestMethod.GET)
	public String schedule(Model model,String finalDate){
		
		Schedule schedule = scheduleService.searchDate(finalDate);
		model.addAttribute("schedule", schedule);
		//System.out.println(finalDate);
		return "board/schedule";
	}
}
