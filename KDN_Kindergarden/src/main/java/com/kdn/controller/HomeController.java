package com.kdn.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.biz.ScheduleService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private ScheduleService scheduleService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("date", scheduleService.searchNow());
		return "index";
	}
	
	@RequestMapping(value="home.do", method = RequestMethod.GET )
	public String home(){
		return "index";
	}
	
	@RequestMapping(value="test.do", method = RequestMethod.GET )
	public String home(Model model){
		model.addAttribute("content", "test3.jsp");
		return "index";
	}
	
}
