package com.kdn.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.biz.ScheduleService;

import com.kdn.model.domain.Schedule;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());
        
        /*SimpleDateFormat sdfy = new SimpleDateFormat("yyyy");
        String strY = sdfy.format(c1.getTime());
        
        SimpleDateFormat sdfm = new SimpleDateFormat("MM");
        String strM = sdfm.format(c1.getTime());*/
        
		List<Schedule> schedule = scheduleService.searchMonth(strToday);
		//System.out.println(schedule);
		model.addAttribute("schedulelist",schedule);
		/*model.addAttribute("year",strY);
		model.addAttribute("month",strM);*/
		Schedule date = scheduleService.searchNow();
		model.addAttribute("date", date);

		return "index";
	}
	
	@RequestMapping(value="home.do", method = RequestMethod.GET )
	public String home(Model model){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());
        
        /*SimpleDateFormat sdfy = new SimpleDateFormat("yyyy");
        String strY = sdfy.format(c1.getTime());
        
        SimpleDateFormat sdfm = new SimpleDateFormat("MM");
        String strM = sdfm.format(c1.getTime());*/
        
		List<Schedule> schedule = scheduleService.searchMonth(strToday);
		//System.out.println(schedule);
		model.addAttribute("schedulelist",schedule);
		/*model.addAttribute("year",strY);
		model.addAttribute("month",strM);*/
		Schedule date = scheduleService.searchNow();
		model.addAttribute("date", date);
		
		return "index";
	}
	
	/*@RequestMapping(value="test.do", method = RequestMethod.GET )
	public String home(Model model){
		model.addAttribute("content", "test3.jsp");
		return "index";
	}*/
	
}
