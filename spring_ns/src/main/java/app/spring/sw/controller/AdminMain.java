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
	
	//admin 메인페이지
	@RequestMapping(value="/admin/adminMain")
	public String admin(HttpServletRequest req){
			String cp=req.getContextPath();
			req.getSession().getServletContext().setAttribute("cp", cp);
			return ".admin";
		}
	
	//로그인
	@RequestMapping(value="/admin/adminLogin",method=RequestMethod.GET)
	public String adminLogForm(){
		return "admin/adminLogin";
	}

	@RequestMapping(value = "/admin/adLogin", method = RequestMethod.POST)
	public String login(AdminVo vo, HttpSession session, Model model) {
		boolean vo1 = service.getInfo(vo);
		if (vo1) {
			model.addAttribute("code", "no");
			return ".swMem.result";
		} else {
			String m_phone = (String) session.getAttribute("m_phone");
			String b_phone = (String) session.getAttribute("b_phone");
			if (m_phone == null && b_phone == null ) {
				AdminVo vo2=service.getA(vo);
				String id= vo2.getA_id();
				System.out.println(vo2.getA_id());
				session.setAttribute("id", id);
				return ".admin";
			}
		}
		return "redirect:/admin/adminLogin";
	}
	 //로그아웃
    @RequestMapping(value="/adminLogout")
    public String logout(HttpSession session){
        session.invalidate();
        return ".main";
    }		
}