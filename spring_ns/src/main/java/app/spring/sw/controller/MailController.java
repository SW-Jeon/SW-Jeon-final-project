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
	@Autowired
	  private MemService service;
	

	  // mailForm
	  @RequestMapping(value = "/swMem/find",method=RequestMethod.GET)
	  public String mailForm() {
	    return ".swMem.mailSending";
	  }  
	 
	  // mailSending 코드
	  @RequestMapping(value = "/swMem/findPwd",method=RequestMethod.POST)
	  public String mailSending(HttpServletRequest request,Model model,String m_phone,String m_name,String m_mail) {
		 
		 
		  String m=new RandomString().create(8);
		  MemVo vo=new MemVo(m_phone, m_name, m_mail, m, "1");
	    String setfrom = "낭만식객<w2263@daum.net>";     //보내는 이
	    String tomail  ="w2263@daum.net";   //받는 이
	    String title   = "회원님의 새로운 임시비밀번호를 전송합니다.";      // 제목
	    String content = "임시비밀번호  "+m+ "  입니다.";   // 내용
		  
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(tomail);     // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText(content);  // 메일 내용
	      if(m_phone.equals(vo.getM_phone()) && m_name.equals(vo.getM_name()) && m_mail.equals(vo.getM_mail())){
	    	  service.changePwd(vo);
	    	  mailSender.send(message);
	    	  model.addAttribute("code", "success");
	  		return ".swMem.result";
	      }else{
	    	  model.addAttribute("code", "fail");
		      return ".swMem.result";
	      }
	    } catch(Exception e){
	      e.printStackTrace();
	      model.addAttribute("code", "fail");
	      return ".swMem.result";
	    }
	 }
} 