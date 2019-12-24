package app.spring.hs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.ReportService;
import app.spring.vo.ReportNameVO;
import app.spring.vo.ReportVo;

@Controller
public class ReportController {
	@Autowired
	private ReportService service;

	// 신고하기
	@RequestMapping("/report")
	public ModelAndView reportForm(String dnum, HttpSession session) {
		ModelAndView mv = new ModelAndView(".report.report");
		mv.addObject("dnum", dnum);
		String phone = (String) session.getAttribute("m_phone");
		mv.addObject("phone", phone);
		System.out.println(dnum);
		return mv;
	}

	@RequestMapping("/reportOk")
	public String reportOk(ReportVo vo) {
		service.insert(vo);
		return ".main";
	}

	// 신고삭제
	@RequestMapping(value = "/admin/bsCareDelete", method = RequestMethod.GET)
	public String Delete(Model model, int re_num) {
		try {
			model.addAttribute("vo", service.delete(re_num));
			return "redirect:/admin/bsCare";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	// 신고상태변경
	@RequestMapping(value = "/admin/bsCareUpdate", method = RequestMethod.GET)
	public String updateForm(Model model, int re_num) {
		try {
			model.addAttribute("vo", service.getInfo(re_num));
			return ".admin.business.bsCareUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	@RequestMapping(value = "/admin/bsCUpdate", method = RequestMethod.POST)
	public String update(ReportVo vo, Model model, int re_num) {
		try {
			service.update(vo);
			model.addAttribute("vo", service.getInfo(re_num));
			return "redirect:/admin/bsCare";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	
	//블랙리트스 상태변경
	@RequestMapping(value="/admin/bsBlackUpdate",method = RequestMethod.GET)
	public String update1(int d_num,int re_state,Model model,ReportVo vo){
		try{
			System.out.println(re_state);
			System.out.println(d_num);
			model.addAttribute("vo",service.getUpdate(vo));
			return "redirect:/admin/bsCare";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	// 신고 전체리스트
	@RequestMapping(value = "/admin/bsCare", method = RequestMethod.GET)
	public String list(Model model, String d_sname) {
		try {
			List<ReportVo> listAll = service.listAll();
			model.addAttribute("listAll", listAll);
			return ".admin.business.bsCareList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	// 신고 상세목록조회
	@RequestMapping(value = "/admin/bsCareDetail", method = RequestMethod.GET)
	public String Detail(Model model, int re_num) {
		try {
			model.addAttribute("vo", service.getInfo(re_num));
			return ".admin.business.bsCareDetail";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	// 신고 3번이상 당한업체 조회
	@RequestMapping(value = "/admin/bsBlack", method = RequestMethod.GET)
	public String blacklist(Model model) {
		try {
			List<ReportNameVO> listBlack = service.getThree();
			model.addAttribute("listBlack", listBlack);
			return ".admin.business.bsBlackList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
}
