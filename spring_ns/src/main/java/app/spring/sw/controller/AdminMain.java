package app.spring.sw.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMain {
	
	@RequestMapping(value="/admin/adminMain")
	public String admin(HttpServletRequest req){
			String cp=req.getContextPath();
			req.getSession().getServletContext().setAttribute("cp", cp);
			return ".admin";
		}
	}