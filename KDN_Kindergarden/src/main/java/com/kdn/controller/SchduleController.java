package com.kdn.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.OpenService;
import com.kdn.model.biz.ScheduleService;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Open;
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
	@Autowired
	private OpenService openService;
	
	
	@RequestMapping(value="pop.do", method=RequestMethod.GET)
	public String pop(Model model,String finalDate){
		Schedule schedule = scheduleService.searchDate(finalDate);
		model.addAttribute("schedule", schedule);
		model.addAttribute("finalDate", finalDate);
		//System.out.println(finalDate);
		return "schedule/listSchedule";
	}
	
	
	/*@RequestMapping(value="schedule.do", method=RequestMethod.GET)
	public String schedule(Model model,String finalDate){
		Schedule schedule = scheduleService.searchDate(finalDate);
		model.addAttribute("schedule", schedule);
		model.addAttribute("finalDate", finalDate);
		//System.out.println(finalDate);
		
		return"index";
	}*/
	
	@RequestMapping(value="insertScheduleForm.do", method=RequestMethod.GET)
	public String insertScheduleForm(Model model, HttpSession session, String date){
		//Schedule schedule = scheduleService.searchSch((Integer)session.getAttribute("id"));
		//model.addAttribute("schedule", schedule);
		//System.out.println(date);
		List<Open> list = openService.searchAll(date);
		//date.trim();
		model.addAttribute("id",session.getAttribute("id"));
		model.addAttribute("date",date);
		model.addAttribute("list",list);
		model.addAttribute("content", "schedule/insertSchedule.jsp");		
		return "schedule/insertSchedule";
	}
	
	@RequestMapping(value="insertSchedule.do", method=RequestMethod.POST)
	public String insertSchedule(Model model, Schedule schedule){
		scheduleService.add(schedule);		
		model.addAttribute("finalDate", schedule.getS_date());		
		return "redirect:pop.do";
	}
	
	@RequestMapping(value="deleteSchedule.do", method=RequestMethod.GET)
	public String deleteSchedule(String date, Model model){
		scheduleService.remove(date);
		model.addAttribute("finalDate", date);
		return "redirect:pop.do";
	}
	
}
