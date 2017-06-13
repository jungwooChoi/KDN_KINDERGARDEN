package com.kdn.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.ClassService;
import com.kdn.model.biz.EnterService;
import com.kdn.model.biz.KidService;
import com.kdn.model.biz.OpenService;
import com.kdn.model.biz.ParentService;
import com.kdn.model.domain.Class;
import com.kdn.model.domain.Enter;
import com.kdn.model.domain.Kid;
import com.kdn.model.domain.Open;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Parent;
import com.kdn.util.LoginCheck;

@Controller
public class EnterController {
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@Autowired
	private EnterService enterService;
	@Autowired
	private ParentService parentService;
	@Autowired
	private KidService kidService;
	@Autowired
	private OpenService openService;
	@Autowired
	private ClassService classService;
		
	@RequestMapping(value="insertEnterForm.do", method=RequestMethod.GET)
	public String insertEnterForm(Model model, HttpSession session){
		int p_id=(Integer) session.getAttribute("id");
		Parent parent=parentService.search(p_id);
		
		List<Kid> myKidsList=kidService.searchMyKid(p_id); 		
		List<Open> openClassList=openService.thisYearSearch();
		model.addAttribute("openClassList", openClassList);
		
		model.addAttribute("myKidsList", myKidsList);
		model.addAttribute("parentInfo", parent);
		model.addAttribute("content", "enter/insertEnter.jsp");
		
		return "index";
	}
	
	@RequestMapping(value="insertEnter.do", method=RequestMethod.POST)
	public String insertEnter(Enter enter){
		
		enterService.add(enter);
		
		return "redirect:listEnter.do";
	}
	
	@RequestMapping(value="listEnter.do", method=RequestMethod.GET)
	public String listEnter(PageBean bean, Model model, HttpSession session){
		if(LoginCheck.check(model, session, "listEnter.do")){	
			List<Enter> enterList = enterService.searchAll(bean);
			model.addAttribute("enterList", enterList);
			model.addAttribute("content", "enter/listEnter.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value="searchEnter.do", method=RequestMethod.GET)
	public String searchEnter(int e_id, Model model){
		List<Open> openClassList=openService.thisYearSearch();
		model.addAttribute("openClassList", openClassList);
		model.addAttribute("enter", enterService.search(e_id));
		model.addAttribute("content", "enter/searchEnter.jsp");
		return "index";
	}
	
	@RequestMapping(value="deleteEnter.do", method=RequestMethod.GET)
	public String deleteEnter(int e_id){
		enterService.remove(e_id);
		return "redirect:listEnter.do";
	}
	
	@RequestMapping(value="updateEnter.do", method=RequestMethod.POST)
	public String updateEnter(Enter enter){
		enterService.update(enter);
		return "redirect:listEnter.do";
	}
}
