package app.spring.sw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.AdminService;
import app.spring.sw.service.InfoService;
import app.spring.vo.InfoVo;

@Controller
public class AdInfoController {
	@Autowired
	AdminService adService;
	@Autowired
	InfoService inService;

	//  글쓰기 폼
	@RequestMapping(value = "/admin/Info", method = RequestMethod.GET)
	public String insertForm(String a_id, Model model) {
		model.addAttribute("vo", adService.getInfo(a_id));
		return ".admin.info.adminInsert";
	}
	
	// 글쓰기 폼에서 값 전달 받아 등록
	@RequestMapping(value = "/admin/InfoInsert", method = RequestMethod.POST)
	public String insertInfo(InfoVo vo, Model model) {
		try {
			inService.insert(vo);
			return ".admin.info.infoList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	// 글삭제
	@RequestMapping(value = "/admin/infoDelete", method = RequestMethod.GET)
	public String Delete(Model model, int i_num, InfoVo vo) {
		try {
			model.addAttribute("vo", inService.delete(i_num));
			return ".admin.info.infoList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//글조회
	@RequestMapping(value="/admin/infoList",method=RequestMethod.GET )
	public String listAll(Model model){
		try {
			List<InfoVo> listAll=inService.list();
			model.addAttribute("listAll", listAll);
			return ".admin.info.infoList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	// 글 상세내용 조회
	@RequestMapping(value = "/admin/infoDetail", method = RequestMethod.GET)
	public String Detail(Model model, int i_num) {
		try {
			model.addAttribute("vo", inService.detail(i_num));
			return ".admin.info.infoDetail";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//글수정
	@RequestMapping(value = "/admin/infoUpdate", method = RequestMethod.GET )
	public String updateForm(int i_num,Model model){
		try {
			model.addAttribute("vo", inService.detail(i_num));
			return ".admin.info.infoUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	@RequestMapping(value = "/admin/infoUpdate", method = RequestMethod.POST )
	public String update(InfoVo vo,int i_num,Model model){
		try {
			inService.update(vo);
			model.addAttribute("vo", inService.detail(i_num));
			return ".admin.info.infoList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//글조회(회원용)
		@RequestMapping(value="/swMem/InfoList",method=RequestMethod.GET )
		public String list(Model model){
			try {
				List<InfoVo> listAll=inService.list();
				model.addAttribute("listAll", listAll);
				return ".swMem.InfoList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		// 글 상세내용 조회(회원용)
		@RequestMapping(value = "/swMem/InfoDetail", method = RequestMethod.GET)
		public String detail(Model model, int i_num) {
			try {
				model.addAttribute("vo", inService.detail(i_num));
				inService.addHit(i_num);
				return ".swMem.InfoDatail";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
}