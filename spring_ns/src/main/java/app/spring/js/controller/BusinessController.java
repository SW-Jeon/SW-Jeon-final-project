package app.spring.js.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.js.service.BusinessService;
import app.spring.vo.BusinessVo;
import app.spring.vo.DetailVo;

@Controller
public class BusinessController {
	@Autowired private BusinessService service;

	// 사업자 메인페이지
	@RequestMapping(value = "/business/businessMain")
	public String admin(HttpServletRequest req) {
		String cp = req.getContextPath();
		req.getSession().getServletContext().setAttribute("cp", cp);
		return ".bs";
	}

	// 로그인
	@RequestMapping(value = "/business/businessLogin", method = RequestMethod.GET)
	public String adminLogForm() {
		return "pj/bs/bsLogin";
	}
	@RequestMapping(value = "/business/bsLogin", method = RequestMethod.POST)
	public String login(BusinessVo vo, HttpSession session, Model model,HttpServletResponse response) throws Exception {
		boolean vo1 = service.getLog(vo);
		if (vo1) {
			model.addAttribute("code", "no");
			return ".swMem.result";
		} else {
			session.setAttribute("phonenum",vo.getB_phone());
			String phone = (String) session.getAttribute("m_phone");
			String id = (String) session.getAttribute("a_id");
			BusinessVo vo2=service.getState(vo);
			String state=vo2.getB_state();
			DetailVo vo31=service.getbd(vo.getB_phone());
		    int r_state2=service.getrstate(vo31);
			if (phone == null && id ==null && state.equals("2")) {
				int num= vo2.getB_num();
				session.setAttribute("num", num);
				if(r_state2==4){
					//alert띄우기	
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('경고당하셨군요~ 개선바랍니다.');</script>");
					out.flush();
				}else if(r_state2==5){	
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('업체 정지가 되셨습니다. 운영자에게 문의 바랍니다.');</script>");
					out.flush();
				}
				return ".bs";
			}else if( state.equals("4")){
				model.addAttribute("code", "nono");
				return ".swMem.result";
			}else{
				model.addAttribute("code", "no");
				return ".swMem.result";
			}
		}
	}

	// 로그아웃
	@RequestMapping(value = "/bsLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return ".main";
	}

	// 업체등록
	@RequestMapping(value = "/pj/business", method = RequestMethod.POST)
	public String insert(BusinessVo vo, Model model) {
		try {
			service.insert(vo);
			return ".main";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}

	// 업체목록
	@RequestMapping(value = "/admin/businessList", method = RequestMethod.GET)
	public String list(Model model) {
		try {
			List<BusinessVo> list = service.listAll();
			model.addAttribute("list", list);
			return ".admin.business.businessList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}

	// 업체 상태변경
	@RequestMapping(value = "/admin/businessUpdate", method = RequestMethod.GET)
	public String UpdateForm(Model model, int b_num) {
		try {
			model.addAttribute("vo", service.getInfo(b_num));
			return ".admin.business.businessUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}
	@RequestMapping(value = "/admin/bnUpdate", method = RequestMethod.POST)
	public String UpdateForm(Model model, BusinessVo vo, int b_num) {
		try {
			service.update(vo);
			model.addAttribute("vo", service.getInfo(b_num));
			return "redirect:/admin/businessList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}
	//에디터페이지
	@RequestMapping(value = "/yg/test", method = RequestMethod.GET)
	public String road(BusinessVo vo) {
		return ".yg.editor";

	}
}
