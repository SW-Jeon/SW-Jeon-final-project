package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MqService;
import app.spring.vo.MqVo;

@Controller
public class MqController {
		@Autowired MqService service;
		
		//회원 문의글 쓰기 폼이동
		@RequestMapping(value="/swMem/memQuestion",method=RequestMethod.GET )
		public String MqinsertForm(){
			return ".swMem.MqInsert";
		}
		
		//글쓰기 폼에서 값 전달 받아 등록
		@RequestMapping(value="/swMem/memQuestion",method=RequestMethod.POST )
		public String MqInsert(MqVo vo,Model model){
			try{
				service.insert(vo);
				model.addAttribute("code", "success");
				return ".swMem.result";
			}catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//글 삭제
		
		//글 업데이트
		
		//글 조회
		
		
}
