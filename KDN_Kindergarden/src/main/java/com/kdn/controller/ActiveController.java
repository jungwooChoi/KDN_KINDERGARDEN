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
import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.PageBean;

@Controller
public class ActiveController {
	@Autowired
	private ActiveService activeService;
	@ExceptionHandler
	public ModelAndView handler(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage());
		model.addObject("content", "ErrorHandler.jsp");
		return model;
	}
	
	@RequestMapping(value ="gallery.do", method = RequestMethod.GET)
	public String gallery(PageBean bean, Model model){
		List<ActiveFile> list = activeService.searchImg(bean);
		model.addAttribute("activelist", list);
		model.addAttribute("content", "gallery/gallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value ="searchGallery.do", method = RequestMethod.GET)
	public String searchgallery(int a_id, Model model){
		model.addAttribute("board", activeService.search(a_id));
		model.addAttribute("contnet", "gallery/searchGallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value ="insertGalleryForm.do", method = RequestMethod.GET)
	public String searchgallery(HttpSession session, Model model){
		model.addAttribute("id", session.getAttribute("id"));
		model.addAttribute("content", "gallery/insertGallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value="insertGallery.do", method=RequestMethod.POST)
	public String insertBoard(Active active, HttpServletRequest request){
		String dir = request.getRealPath("active/");
		activeService.add(active, dir);
		return "redirect:gallery.do";
	}
}
