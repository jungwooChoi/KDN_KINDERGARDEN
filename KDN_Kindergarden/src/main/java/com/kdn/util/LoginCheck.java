package com.kdn.util;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public class LoginCheck {
	public static boolean check(Model model, HttpSession session
								, String url){
		if(session.getAttribute("id") == null){
			session.setAttribute("referer", url);
			model.addAttribute("content", "member/loginForm.jsp");
			return false;
		}
			
		return true;
		}
}



