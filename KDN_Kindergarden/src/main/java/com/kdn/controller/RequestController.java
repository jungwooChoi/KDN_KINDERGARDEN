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

import com.kdn.model.biz.RequestService;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Request;

@Controller
public class RequestController {
	/*
	 * Error 처리
	 * 
	 * ExceptionHandler Controller에서 오류가 발생하면 처리하는 기능
	 * */
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@Autowired
	private RequestService requestService;
	
	@RequestMapping(value="insertRequestForm.do", method=RequestMethod.GET)
	public String insertRequestForm(Model model){
		model.addAttribute("content", "request/insertRequest.jsp");
		return "index";
	}
	
	@RequestMapping(value="insertRequest.do", method=RequestMethod.POST)
	public String insertRequest(Request request){
		
		requestService.add(request);
		
		return "redirect:listRequest.do";
	}
	@RequestMapping(value="listRequest.do", method=RequestMethod.GET)
	public String listRequest(PageBean bean, Model model){
		List<Request> list = requestService.searchAll(bean);
		model.addAttribute("list", list);
		model.addAttribute("content", "request/listRequest.jsp");
		return "index";
	}
	
	@RequestMapping(value="searchRequest.do", method=RequestMethod.GET)
	public String searchRequest(int r_id, Model model, HttpSession session){
		//model.addAttribute("id", session.getAttribute("id"));
		System.out.println(r_id);
		model.addAttribute("request", requestService.search(r_id));
		model.addAttribute("content", "request/searchRequest.jsp");
		return "index";
	}
	
	@RequestMapping(value="deleteRequest.do", method=RequestMethod.GET)
	public String deleteRequest(int b_id){
		requestService.remove(b_id);
		return "redirect:listRequest.do";
	}
	
	@RequestMapping(value="updateRequest.do", method=RequestMethod.GET)
	public String updateRequest(Request request){
		requestService.update(request);
		return "redirect:listRequest.do";
	}
}



