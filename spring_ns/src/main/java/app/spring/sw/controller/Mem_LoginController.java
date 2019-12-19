package app.spring.sw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.hs.service.DetailService;
import app.spring.sw.service.MemService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.vo.MemVo;
import app.spring.yg.service.SelectListService;

@Controller
public class Mem_LoginController {
	@Autowired private MemService service;
	@Autowired private DetailService service1;
	@Autowired private SelectListService service2;
	
	//회원 메인페이지 로그인
	@RequestMapping(value="/memLogin",method=RequestMethod.POST )
		public String login(String m_phone,String m_pwd,HttpSession session,Model model){
		MemVo vo=service.getInfo(m_phone);
		if(vo==null){
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
		String phone=vo.getM_phone();
		String pwd=vo.getM_pwd();
		String status=vo.getM_status();
		String id=(String)session.getAttribute("a_id");
		
		if(phone.equals(m_phone) && pwd.equals(m_pwd) && status.equals("1") && id==null ){
			session.setAttribute("m_phone", m_phone);
			session.setAttribute("m_pwd", m_pwd);
			List<DetailVo> flist=service2.foodlist(m_phone);
			int count=service2.foodcount(m_phone);
			session.setAttribute("flist", flist);
			session.setAttribute("count", count);
			return ".main";
		}else if(!(phone.equals(m_phone) && pwd.equals(m_pwd))){
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}else{
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
		
	}
	   //상세페이지에서 로그인
	   @RequestMapping(value="/swMem/memLogin",method=RequestMethod.POST )
	      public String loginFOM(String m_phone,String m_pwd,String name,HttpSession session,Model model){
	      MemVo vo=service.getInfo(m_phone);
	      if(vo==null){
				model.addAttribute("code", "fail");
				return ".swMem.result";
	      }
	      String phone=vo.getM_phone();
	      String pwd=vo.getM_pwd();
	      String status=vo.getM_status();
	      String id=(String)session.getAttribute("a_id");
	      List<DetailVo> list=service1.finddetail(name);
			List<FindimgVo> list1=service1.findimg(name);
			List<FindmenuVo> list2=service1.findmenu(name);
			if(phone.equals(m_phone) && pwd.equals(m_pwd) && status.equals("1") && id==null ){
	         session.setAttribute("m_phone", m_phone);
	         session.setAttribute("m_pwd", m_pwd);
	         model.addAttribute("phone",phone);
				System.out.println(phone);
				model.addAttribute("list",list);
				model.addAttribute("list1",list1);
				model.addAttribute("list2",list2);
				model.addAttribute("name",name);
	         return ".detailpage.detailpg";
		  }else if(!(phone.equals(m_phone) && pwd.equals(m_pwd))){
				model.addAttribute("code", "fail");
				return ".swMem.result";
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
