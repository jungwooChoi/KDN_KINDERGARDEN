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

import com.kdn.model.biz.ActiveService;
import com.kdn.model.biz.MenuFileService;
import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.MenuFile;
import com.kdn.model.domain.PageBeanGallery;
import com.kdn.util.LoginCheck;

@Controller
public class MenuFileController {
	@Autowired
	private MenuFileService menufileService;
	@ExceptionHandler
	public ModelAndView handler(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage());
		model.addObject("content", "ErrorHandler.jsp");
		return model;
	}
	
	@RequestMapping(value ="menuGallery.do", method = RequestMethod.GET)
	public String gallery(PageBeanGallery bean, Model model){
		List<MenuFile> list = menufileService.searchAll(bean);
		model.addAttribute("menufilelist", list);
		model.addAttribute("content", "menu/menuGallery.jsp");
		
		return "index";
	}
		
	@RequestMapping(value ="insertMenuGalleryForm.do", method = RequestMethod.GET)
	public String insertMenuGalleryForm(HttpSession session, Model model){
		model.addAttribute("id", session.getAttribute("id"));
		model.addAttribute("content", "menu/insertMenuGallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value="insertMenuGallery.do", method=RequestMethod.POST)
	public String insertMenuGallery(MenuFile menufile, HttpServletRequest request, HttpSession session){
		String dir = request.getRealPath("upload_menu/");
		menufileService.add(menufile, dir, (Integer)session.getAttribute("id"));
		return "redirect:menuGallery.do";
	}
	
	@RequestMapping(value="deleteMenuGallery.do", method=RequestMethod.GET)
	public String deleteMenuGallery(int no){
		menufileService.remove(no);
		return "redirect:menuGallery.do";
	}
}
