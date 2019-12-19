package app.spring.nm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import app.spring.vo.DetailVo;
import app.spring.yg.service.SelectListService;

//@Controller를 어노테이션 해준다.
@Controller
public class HomeController {
	@Autowired private SelectListService service2;
	//@RequestMapping은 지정된 url경로를 찾아가게 해준다.
	@RequestMapping("/")	
	public String home(HttpServletRequest req,Model model,HttpSession session){
		String cp=req.getContextPath();
		req.getSession().getServletContext().setAttribute("cp", cp);
		String m_phone=(String)session.getAttribute("m_phone");
		if(m_phone!=null){
			List<DetailVo> flist=service2.foodlist(m_phone);
			int count=service2.foodcount(m_phone);
			session.setAttribute("flist", flist);
			session.setAttribute("count", count);
		}
		return ".main";

	}
}
