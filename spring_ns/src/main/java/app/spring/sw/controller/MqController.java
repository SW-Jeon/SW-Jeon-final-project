package app.spring.sw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.sw.service.MqService;
import app.spring.vo.MqVo;

@Controller
public class MqController {
		@Autowired MqService service;
		@Autowired private MemService service1;
		
		//회원 문의글 쓰기 폼이동
		@RequestMapping(value="/swMem/memQuestion",method=RequestMethod.GET )
		public String MqinsertForm(String m_phone, Model model){
			model.addAttribute("vo", service1.getInfo(m_phone));
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
		
		//글 목록조회(회원용)
		@RequestMapping(value="/swMem/mqMyList",method=RequestMethod.GET )
		public String listMy(Model model,String m_phone){
			try {
				model.addAttribute("vo", service1.getInfo(m_phone));
				List<MqVo> listMy=service.listMy(m_phone);
				model.addAttribute("m_phone", m_phone);
				model.addAttribute("listMy", listMy);	
				return ".swMem.MqMyList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		//글 상세내용 조회
		@RequestMapping(value="/swMem/mqContent",method=RequestMethod.GET )
		public String Detail(Model model,String mq_num){
			try{
				return "/";
			} catch (Exception e) {
			model.addAttribute("code", "fail");
			return ".swMem.result";
			}
		}
		
///////////////////////////////////////////////////////   운영자용  ////////////////////////////////////////////////////////////////	
		
		//글 조회(운영자용)
		@RequestMapping(value="/swMem/mqList",method=RequestMethod.GET )
		public String listAll(Model model){
			try {
				List<MqVo> listAll=service.listAll();
				model.addAttribute("listAll", listAll);
				return ".swMem.MqList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//글 삭제
		
		//운영자 답변(업데이트)
		@RequestMapping(value="/swMem/mqReply",method=RequestMethod.GET )
		public String Reply(Model model,String mq_num){
		try{
			return ".swMem.result";
			} catch (Exception e) {
			model.addAttribute("code", "fail");
			return ".swMem.result";
			}
		}
}
