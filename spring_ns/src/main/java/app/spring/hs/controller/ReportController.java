package app.spring.hs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.ReportService;
import app.spring.vo.ReportVo;

@Controller
public class ReportController {
		@Autowired private ReportService service;
		@RequestMapping("/report")
	public ModelAndView reportForm(String dnum,HttpSession session){
			ModelAndView mv = new ModelAndView(".report.report");
			mv.addObject("dnum",dnum);
			String phone=(String)session.getAttribute("m_phone");
			mv.addObject("phone",phone);
			System.out.println(dnum);
			return mv;
	}
		@RequestMapping("/reportOk")
		public String reportOk(ReportVo vo){
			service.insert(vo);
			return ".main";
			
		}
	 
}
