package app.spring.sw.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class MailController {
	@Autowired
	  private JavaMailSender mailSender;
	  private MemService service;

	  // mailForm
	  @RequestMapping(value = "/swMem/find",method=RequestMethod.GET)
	  public String mailForm() {
	    return ".swMem.mailSending";
	  }  
	 
	  // mailSending 코드
	  @RequestMapping(value = "/swMem/findPwd",method=RequestMethod.POST)
	  public String mailSending(HttpServletRequest request,Model model,MemVo vo) {
		  String phone=request.getParameter("m_phone");
		  String name=request.getParameter("m_name");
		  String mail=request.getParameter("m_mail");
		 service.changePwd(vo);
		  
	    String setfrom = "w2263@daum.net";         //보내는 이
	    String tomail  ="w2263@daum.net";	//받는 이
	    String title   = "회원님의 새로운 임시비밀번호를 전송합니다.";      // 제목
	    String content = request.getParameter("임시비밀번호"+new RandomString().create(8)+ "입니다.");    // 내용
	   
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(tomail);     // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText(content);  // 메일 내용

	      
	      mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }
		model.addAttribute("code", "success");
		return ".swMem.result";
	  }
	} 