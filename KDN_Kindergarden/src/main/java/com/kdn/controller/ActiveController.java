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
import com.kdn.model.domain.PageBeanGallery;
import com.kdn.util.LoginCheck;

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
	public String gallery(PageBeanGallery bean, Model model, HttpSession session){
		if(LoginCheck.check(model, session, "gallery.do")){
			List<ActiveFile> list = activeService.searchImg(bean);
			model.addAttribute("activelist", list);
			model.addAttribute("content", "gallery/gallery.jsp");
		}
		
		return "index";
	}
	
	@RequestMapping(value ="searchGallery.do", method = RequestMethod.GET)
	public String searchGallery(int no, Model model){
		model.addAttribute("board", activeService.search(no));
		model.addAttribute("contnet", "gallery/searchGallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value ="insertGalleryForm.do", method = RequestMethod.GET)
	public String searchGallery(HttpSession session, Model model){
		model.addAttribute("id", session.getAttribute("id"));
		model.addAttribute("content", "gallery/insertGallery.jsp");
		
		return "index";
	}
	
	@RequestMapping(value="insertGallery.do", method=RequestMethod.POST)
	public String insertGallery(Active active, HttpServletRequest request, HttpSession session){
		String dir = request.getRealPath("upload_active/");
		activeService.add(active, dir, (Integer)session.getAttribute("id"));
		return "redirect:gallery.do";
	}
	
	@RequestMapping(value="deleteGallery.do", method=RequestMethod.GET)
	public String deleteGallery(int no){
		activeService.remove(no);
		return "redirect:gallery.do";
	}
}
