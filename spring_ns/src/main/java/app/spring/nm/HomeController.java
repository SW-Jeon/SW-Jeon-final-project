package app.spring.nm;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller를 어노테이션 해준다.
@Controller
public class HomeController {
	
	//@RequestMapping은 지정된 url경로를 찾아가게 해준다.
	@RequestMapping("/")	
	public String home(HttpServletRequest req){
		String cp=req.getContextPath();
		req.getSession().getServletContext().setAttribute("cp", cp);
		return ".main";

	}
}
