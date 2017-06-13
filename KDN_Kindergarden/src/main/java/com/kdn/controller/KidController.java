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

import com.kdn.model.biz.KidService;
import com.kdn.model.domain.Kid;
import com.kdn.model.domain.PageBean;

@Controller
public class KidController {
	
	@Autowired
	private KidService kidService;
	
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@RequestMapping(value="insertKidForm.do", method=RequestMethod.GET)
	public String insertKidForm(Model model){
		model.addAttribute("content", "kid/insertKid.jsp");
		return "index";
	}
	
	@RequestMapping(value="insertKid.do", method=RequestMethod.POST)
	public String insertKid(Kid kid, HttpServletRequest request){
		String dir=request.getRealPath("upload_kid/");
		kidService.add(kid, dir);
		return "redirect:listMyKids.do";
	}
	@RequestMapping(value="listAllKids.do", method=RequestMethod.GET)
	public String listAllKids(PageBean bean, Model model){
		List<Kid> list = kidService.searchAll(bean);
		model.addAttribute("list", list);
		model.addAttribute("content", "kid/listKid.jsp");
		return "index";
	}
	
	@RequestMapping(value="listMyKids.do", method=RequestMethod.GET)
	public String listMyKids(HttpSession session, Model model){
		int k_p_id=(Integer)session.getAttribute("id");
		List<Kid> list = kidService.searchMyKid(k_p_id);
		model.addAttribute("list", list);
		model.addAttribute("content", "kid/listKid.jsp");
		return "index";
	}
	
	@RequestMapping(value="searchKid.do", method=RequestMethod.GET)
	public String searchKid(int k_id, Model model, HttpSession session){
		model.addAttribute("kid", kidService.search(k_id));
		model.addAttribute("content", "kid/searchKid.jsp");
		return "index";
	}
	
	@RequestMapping(value="deleteKid.do", method=RequestMethod.GET)
	public String deleteKid(int k_id){
		kidService.remove(k_id);
		return "redirect:listKid.do";
	}
	
	@RequestMapping(value="updateKid.do", method=RequestMethod.POST)
	public String updateKid(Kid kid, HttpServletRequest request){
		String dir=request.getRealPath("upload_kid/");
		kidService.update(kid, dir);
		return "redirect:listKid.do";
	}
}



