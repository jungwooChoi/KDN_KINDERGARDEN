package com.kdn.controller;

import java.util.ArrayList;
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

import com.kdn.model.biz.BelongService;
import com.kdn.model.biz.ClassService;
import com.kdn.model.biz.KidService;
import com.kdn.model.biz.OpenService;
import com.kdn.model.biz.ParentService;
import com.kdn.model.domain.Belong;
import com.kdn.model.domain.Kid;
import com.kdn.model.domain.Open;
import com.kdn.model.domain.PageBean;

@Controller
public class MyClassController {
	
	@Autowired
	private KidService kidService;
	@Autowired
	private OpenService openService;
	@Autowired
	private ClassService classService;
	@Autowired
	private BelongService belongService;
	@Autowired
	private ParentService parentService;
	
	@ExceptionHandler
	public ModelAndView hander(Exception e){
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", e.getMessage()); //request에 저장
		model.addObject("content", "ErrorHandler.jsp"); //request에 저장
		
		return model;
	}
	
	@RequestMapping(value="listMyClass.do", method=RequestMethod.GET)
	public String listMyClass(Model model, HttpSession session){
		int o_t_id=(Integer) session.getAttribute("id");
		Open open=openService.search(o_t_id);
		
		int c_id=open.getO_c_id();
		int b_o_id=open.getO_id();
		int cnt=belongService.getCount(b_o_id);
		
		List<Integer> belongList=belongService.searchAll(b_o_id); //인덱스는 0부터 시작
//		System.out.println(belongList.get(0));
//		System.out.println(belongList.get(1));
//		System.out.println(cnt);
		
		List<Kid> kidList= new ArrayList<Kid>(cnt);
		
		for(int i=0;i<cnt;i++){
//			System.out.println(belongList.get(i));
			int k_id=belongList.get(i);
			kidList.add(i, kidService.search(k_id));
//			System.out.println(kidList.get(i)); 
		}
		
		/*List<Kid> kidList = new ArrayList<Kid>(cnt);
		for (Integer i : belongList) {
			int k_id=belongList.get(i);
			kidList.add(kidService.search(k_id));
		}*/

		model.addAttribute("cl", classService.search(c_id));
		model.addAttribute("cnt", cnt);
		model.addAttribute("kidList", kidList);
		
		model.addAttribute("content", "myClass/listMyClass2.jsp");
		return "index";
	}
	
	@RequestMapping(value="searchMyStudent.do", method=RequestMethod.GET)
	public String searchMyClass(int k_p_id, int k_id, Model model){
		model.addAttribute("student", kidService.search(k_id));
		model.addAttribute("parent", parentService.search(k_p_id));
		model.addAttribute("content", "myClass/searchMyStudent.jsp");
		return "index";
	}

}



