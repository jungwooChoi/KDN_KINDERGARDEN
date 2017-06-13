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

import com.kdn.model.biz.BoardService;
import com.kdn.model.biz.MenuService;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;
import com.kdn.util.LoginCheck;

@Controller
public class MenuController {
	/*
	 * Error 처리
	 * 
	 * ExceptionHandler Controller에서 오류가 발생하면 처리하는 기능
	 * */
	@ExceptionHandler
	public ModelAndView hander(Exception e)
	{
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		return model;
	}
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping(value="insertmenuBoardForm.do", method=RequestMethod.GET)
	public String insertmenuBoardForm(Model model)
	{
		model.addAttribute("content", "menu/insertMenuBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value="insertmenuBoard.do", method=RequestMethod.POST)
	public String insertmenuBoard(Menu menu)
	{
		
		menuService.add(menu);	
		/*return "redirect:listmenuBoard.do";*/
		return "redirect:menu.do";
	}

	
	@RequestMapping(value="searchmenuBoard.do", method=RequestMethod.GET)
	public String searchmenuBoard(int m_id, Model model, HttpSession session){
		model.addAttribute("menu", menuService.search(m_id));
		model.addAttribute("content", "menu/menu.jsp");
		return "index";
	}
	
	@RequestMapping(value="deletemenuBoard.do", method=RequestMethod.GET)
	public String deletemenuBoard(int m_id)
	{
		menuService.remove(m_id);
		return "redirect:menu.do";
	}
	
	@RequestMapping(value="updatemenuBoardForm.do", method=RequestMethod.GET)
	public String updatemenuBoardForm(int m_id, Model model)
	{
		model.addAttribute("board", menuService.search(m_id));
		model.addAttribute("content", "menu/updateMenuBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value="updatemenuBoard.do", method=RequestMethod.GET)
	public String updatemenuBoard(Menu menu)
	{
		menuService.update(menu);
		return "redirect:menu.do";
	}
	
	@RequestMapping(value ="menu.do", method = RequestMethod.GET)
	public String menu(Model model, HttpSession session){
		if(LoginCheck.check(model, session, "menu.do")){
			model.addAttribute("one", menuService.searchCategoryOne());
			model.addAttribute("two", menuService.searchCategoryTwo());
			model.addAttribute("three", menuService.searchCategoryThree());
			model.addAttribute("four", menuService.searchCategoryFour());
			model.addAttribute("content", "menu/menu.jsp");
		}
		return "index";
	}
	
}