package app.spring.js.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.js.service.BqService;

import app.spring.vo.BqVo;

@Controller
public class BqController {
		@Autowired private BqService service;

	
		// 사업자 문의 글 쓰기 폼이동
		@RequestMapping(value="/pj/bs/bqinsert",method=RequestMethod.GET)
		public String BqinsertForm(Model model,HttpSession session){
			return ".bs.bqinsert";
		}
		//문의글 폼에서 값 전달 받기
		@RequestMapping(value="/pj/bs/bqinsert",method=RequestMethod.POST)
		public String Bqinsert(BqVo vo,Model model,HttpSession session){
			try{
				int d_num=(Integer)session.getAttribute("d_num");
				BqVo vo1=new BqVo(0,d_num,vo.getBq_title(),vo.getBq_content(),null,null,"1");
				service.insert(vo1);
				model.addAttribute("code","success");
				return ".pj.result";
			}catch(Exception e){
				e.printStackTrace();
				model.addAttribute("code","fail");
				return ".pj.result";
			}
		}
		//목록조회
		@RequestMapping(value="/pj/bs/BqList",method=RequestMethod.GET)
		public String listBq(Model model,HttpSession session){
			try{
				
				String b_phone=(String)session.getAttribute("phonenum");
				int d_num=service.getdnum(b_phone);
				session.setAttribute("d_num",d_num);
				List<BqVo> list=service.alllist(d_num);
				model.addAttribute("alllist",list);
				return ".bs.BqList";
			}catch(Exception e){
				e.printStackTrace();
				model.addAttribute("code","fail");
				return".pj.result";
			}
		}
		@RequestMapping(value="/pj/bs/bqcontent",method=RequestMethod.GET)
		public String BqDetail(Model model,int bq_num){
			try{
				model.addAttribute("vo",service.detail(bq_num));
				return ".bs.bqcontent";
			}catch(Exception e){
				e.printStackTrace();
				model.addAttribute("code","fail");
				return ".pj.result";
			}
		}
}
