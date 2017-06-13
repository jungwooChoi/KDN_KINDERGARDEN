package com.kdn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdn.model.biz.TeacherService;
import com.kdn.model.domain.Teacher;

@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(Model model, HttpSession session, int id, String pw){
		teacherService.login(id, pw);
		session.setAttribute("id", id);
		String referer = (String)session.getAttribute("referer");
		if(referer != null){
			session.removeAttribute("referer");
			return "redirect:"+referer;
		}else{
			return "index";
		}
	}
	
	@RequestMapping(value = "loginForm.do", method = RequestMethod.GET)
	public String loginForm(Model model){
		model.addAttribute("content", "member/loginForm.jsp");
		return "index";
	}
	
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("id");
		return "index";
	}
	
	@RequestMapping(value="updateForm.do", method = RequestMethod.GET )
	public String updateForm(Model model, HttpSession session){
		Teacher teacher = teacherService.search((Integer)session.getAttribute("id"));
		model.addAttribute("teacher", teacher);
		model.addAttribute("content", "member/myPage.jsp");
		model.addAttribute("myPage_content", "memberInfo.jsp");
		return "index";
	}
	
	@RequestMapping(value="myPage.do", method = RequestMethod.GET )
	public String myPage(Model model, HttpSession session){
		Teacher teacher = teacherService.search((Integer)session.getAttribute("id"));
		model.addAttribute("teacher", teacher);
		model.addAttribute("content", "member/myPage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String update(Teacher teacher, HttpServletRequest request){
		String dir=request.getRealPath("uploadTeacher/");
		teacherService.update(teacher,dir);
		return "redirect:myPage.do";
	}
}
