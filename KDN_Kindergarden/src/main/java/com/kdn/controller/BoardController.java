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
import com.kdn.model.domain.Board;
import com.kdn.model.domain.PageBean;

@Controller
public class BoardController {
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
	private BoardService boardService;
	
	@RequestMapping(value="insertBoardForm.do", method=RequestMethod.GET)
	public String insertBoardForm(Model model, HttpSession session){
		model.addAttribute("id", session.getAttribute("id"));
		model.addAttribute("content", "board/insertBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value="insertBoard.do", method=RequestMethod.POST)
	public String insertBoard(Board board){
		
		boardService.add(board);
		
		return "redirect:listBoard.do";
	}
	@RequestMapping(value="listBoard.do", method=RequestMethod.GET)
	public String listBoard(PageBean bean, Model model){
		List<Board> list = boardService.searchAll(bean);
		model.addAttribute("list", list);
		model.addAttribute("content", "board/listBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value="searchBoard.do", method=RequestMethod.GET)
	public String searchBoard(int b_id, Model model, HttpSession session){
		//model.addAttribute("id", session.getAttribute("id"));
		System.out.println(b_id);
		model.addAttribute("board", boardService.search(b_id));
		model.addAttribute("content", "board/searchBoard.jsp");
		return "index";
	}
	
	@RequestMapping(value="deleteBoard.do", method=RequestMethod.GET)
	public String deleteBoard(int b_id){
		boardService.remove(b_id);
		return "redirect:listBoard.do";
	}
	
	@RequestMapping(value="updateBoard.do", method=RequestMethod.GET)
	public String updateBoard(Board board){
		boardService.update(board);
		return "redirect:listBoard.do";
	}
}



