package app.spring.sw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class Mem_LoginController {
	@Autowired private MemService service;
	

	
	
	//로그인
	@RequestMapping(value="/memLogin",method=RequestMethod.POST )
		public String login(String m_phone,String m_pwd,HttpSession session,Model model){
		MemVo vo=service.getInfo(m_phone);
		String phone=vo.getM_phone();
		String pwd=vo.getM_pwd();
		String status=vo.getM_status();
		if(phone.equals(m_phone) && pwd.equals(m_pwd) && status.equals("1") ){
			session.setAttribute("m_phone", m_phone);
			session.setAttribute("m_pwd", m_pwd);
			return "redirect:/";
		}else{
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//로그인
	@RequestMapping(value="/swMem/memLogin",method=RequestMethod.POST )
		public String loginFOM(String m_phone,String m_pwd,HttpSession session,Model model){
		MemVo vo=service.getInfo(m_phone);
		String phone=vo.getM_phone();
		String pwd=vo.getM_pwd();
		String status=vo.getM_status();
		if(phone.equals(m_phone) && pwd.equals(m_pwd) && status.equals("1") ){
			session.setAttribute("m_phone", m_phone);
			session.setAttribute("m_pwd", m_pwd);
			return ".detailpage.detailpg";
		}else{
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
		 //로그아웃
        @RequestMapping(value="/memLogout")
        public String logout(HttpSession session){
            session.invalidate();
            return "redirect:/";  
        }	
        
        //전화번호 찾기
        @RequestMapping(value="/swMem/findPhone",method=RequestMethod.GET)
        public String findPhoneForm(){
        	return ".swMem.findPhone";
        }
        
        @RequestMapping(value="/swMem/findPhone",method=RequestMethod.POST)
        public String findPhone(String m_name,String m_mail,HttpServletRequest req, Model model,MemVo vo){
        	String phone=service.getPhone(vo);
        	String name=req.getParameter("m_name");
        	String mail=req.getParameter("m_mail");
        	
        	 if(phone==null) {
        		model.addAttribute("code", "fail");
        	}else if(name.equals(m_name) && mail.equals(m_mail)){
        		model.addAttribute("phone", phone);
        		model.addAttribute("code", "find");
        	}
        	 return ".swMem.findPhone";
        }
        
        //비밀번호찾기 
        @RequestMapping(value="/swMem/findPwd",method=RequestMethod.GET)
        public String findPwdForm(){
        	return ".swMem.findPwd";
        }
       
}
