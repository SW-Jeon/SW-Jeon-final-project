package app.spring.sw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.AdminService;
import app.spring.vo.AdminVo;

@Controller
public class AdminMain {
	@Autowired AdminService service;
	
	@RequestMapping(value="/admin/adminMain")
	public String admin(HttpServletRequest req){
			String cp=req.getContextPath();
			req.getSession().getServletContext().setAttribute("cp", cp);
			return ".admin";
		}

	@RequestMapping(value="/admin/adminLogin",method=RequestMethod.GET)
	public String adminLogForm(){
		return "admin/adminLogin";
	}
	@RequestMapping(value="/admin/adLogin",method=RequestMethod.POST)
	public String login(String a_id,String a_pwd,HttpSession session){
		AdminVo vo=service.getInfo(a_id);
		String id=vo.getA_id();
		String pwd=vo.getA_pwd();
		if(id.equals(a_id) && pwd.equals(a_pwd)){
			session.setAttribute("a_id", a_id);
			session.setAttribute("a_pwd", a_pwd);
			return ".admin";
		}else{
			return "redirect:/admin/adminLogin";
		}
	}
}