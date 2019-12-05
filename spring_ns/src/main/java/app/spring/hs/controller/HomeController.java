package app.spring.hs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	@RequestMapping("/")	
	public String home(HttpServletRequest req){
		String cp=req.getContextPath();
		req.getSession().getServletContext().setAttribute("cp", cp);
		return ".main";

	}
}
