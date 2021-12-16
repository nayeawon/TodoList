package com.todolist.myapp;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.todolist.myapp.User.*;

@Controller
@RequestMapping(value ="/login")
public class LoginController {
	
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value ="/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value ="/registerOK", method = RequestMethod.GET)
	public String registerOK(UserVO vo) {
		int i = service.addUser(vo);
		if(i == 0) {
			System.out.println("데이터 추가 실패 ");
		} else {
			System.out.println("데이터 추가 성공!");
		}
		
		return "redirect:/login/login";
	}
	
	@RequestMapping(value="/loginOK", method = RequestMethod.GET)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		UserVO loginvo = service.getUser(vo);
		if(loginvo != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/todo/list";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		
		return returnURL;
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
