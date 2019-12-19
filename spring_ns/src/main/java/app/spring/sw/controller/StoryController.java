package app.spring.sw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.AdminService;
import app.spring.sw.service.StoryService;
import app.spring.vo.StoryVo;

@Controller
public class StoryController {
	@Autowired AdminService adService;
	@Autowired StoryService  stService;
	
	//글쓰기폼 이동
	@RequestMapping(value = "/admin/Story", method = RequestMethod.GET)
	public String insertForm(String a_id,Model model){
		model.addAttribute("vo", adService.getInfo(a_id));
		return ".admin.story.storyInsert";
	}
	
	//글쓰기폼에서 값 전달 받아 등록
	@RequestMapping(value = "/admin/storyInsert", method = RequestMethod.POST)
	public String insertStory(StoryVo vo,Model model){
		try {
			stService.insert(vo);
			return "redirect:/admin/storyList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}
	
	//글삭제
	@RequestMapping(value = "/admin/storyDelete", method = RequestMethod.GET)
	public String Delete(Model model,int s_num,StoryVo vo){
		try {
			model.addAttribute("vo", stService.delete(s_num));
			return "redirect:/admin/storyList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}
	
	//글조회
	@RequestMapping(value="/admin/storyList",method=RequestMethod.GET )
	public String listAll(Model model){
		try{
			List<StoryVo> listAll=stService.list();
			model.addAttribute("listAll", listAll);
			return ".admin.story.storyList";
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//글 상세내용
	@RequestMapping(value = "/admin/storyDetail", method = RequestMethod.GET)
	public String Detail(Model model,int s_num){
			try{
				model.addAttribute("vo", stService.detail(s_num));
				return ".admin.story.storyDetail";
			}catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
	
		//글수정
		@RequestMapping(value = "/admin/storyUpdate", method = RequestMethod.GET )
		public String updateForm(int s_num,Model model){
			try {
				model.addAttribute("vo", stService.detail(s_num));
				return ".admin.story.storyUpdate";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		@RequestMapping(value = "/admin/storyUpdate", method = RequestMethod.POST )
		public String update(StoryVo vo,int s_num,Model model){
			try {
				stService.update(vo);
				model.addAttribute("vo", stService.detail(s_num));
				return "redirect:/admin/storyList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//글조회(회원용)
		@RequestMapping(value="/swMem/storyList",method=RequestMethod.GET )
		public String list(Model model){
			try{
				List<StoryVo> listAll=stService.list();
				model.addAttribute("listAll", listAll);
				return ".swMem.StoryList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		// 글 상세내용 조회(회원용)
		@RequestMapping(value="/swMem/storyDetail",method=RequestMethod.GET )
		public String detail(Model model, int s_num){
			try {
				model.addAttribute("vo", stService.detail(s_num));
				stService.addHit(s_num);
				return ".swMem.StoryDetail";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}	
}