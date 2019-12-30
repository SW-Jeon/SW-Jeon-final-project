package app.spring.yg.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import app.spring.vo.BlogInfoVo;
import app.spring.vo.BlogVo;
import app.spring.vo.BusinessVo;
import app.spring.vo.EditorVo;
import app.spring.vo.ReviewVo;
import app.spring.yg.service.SelectListService;

@Controller
public class BlogController {
	@Autowired SelectListService service;
	
	@RequestMapping(value="/bloginsert")
	public String bloginsert(String title,String bl_name,String ir1,MultipartFile file1,Model model,HttpSession session){
		System.out.println(ir1);
		String uploadPath="C:/Users/JHTA/git/final-project/spring_ns/src/main/webapp/resources/blogimg";
		try{
			if(!file1.isEmpty()){
				//저장될 파일명(중복되지 않는 이름으로 만들기)
			String r_pic=UUID.randomUUID() +"_" + file1.getOriginalFilename();
			//전송된 파일을 읽어오기 위한 스트림
			InputStream fis=file1.getInputStream();
			//전송된 파일을 서버에 출력하기 위한 스트림
			FileOutputStream fos=
					new FileOutputStream(uploadPath+"\\" + r_pic);
			//파일복사하기(업로드하기)
			FileCopyUtils.copy(fis, fos);
			fis.close();
			fos.close();
			EditorVo vo=new EditorVo(0, bl_name, title, ir1, r_pic, null, 0);
			service.inserteditor(vo);
			model.addAttribute("title", title);
			model.addAttribute("ir1", ir1);
			model.addAttribute("r_pic", r_pic);
		}	else{
			model.addAttribute("title", title);
			model.addAttribute("ir1", ir1);
		}
			model.addAttribute("code", "success");
			return ".swMem.result";
	}catch(IOException ie){
		ie.printStackTrace();
		model.addAttribute("code", "fail");
		return ".swMem.result";
	}
	}
	@RequestMapping(value="/blogproinsertpage")
	public String blogproinsert(HttpSession session,Model model){
		return ".yg.blogpro";
	}
	@RequestMapping(value="/blogproinsert")
	public String blogproinsert(String blogname,MultipartFile file1,Model model,HttpSession session){
		String uploadPath="C:/Users/JHTA/git/final-project/spring_ns/src/main/webapp/resources/imgpro";
		try{
			if(!file1.isEmpty()){
				//저장될 파일명(중복되지 않는 이름으로 만들기)
			String r_pic=UUID.randomUUID() +"_" + file1.getOriginalFilename();
			//전송된 파일을 읽어오기 위한 스트림
			InputStream fis=file1.getInputStream();
			//전송된 파일을 서버에 출력하기 위한 스트림
			FileOutputStream fos=
					new FileOutputStream(uploadPath+"\\" + r_pic);
			//파일복사하기(업로드하기)
			FileCopyUtils.copy(fis, fos);
			fis.close();
			fos.close();
			System.out.println("에러아님");
			String m_phone=(String)session.getAttribute("m_phone");
			BlogVo vo=new BlogVo(blogname, m_phone, r_pic);
			service.insertblogname(vo);
			model.addAttribute("blogname", blogname);
			model.addAttribute("r_pic", r_pic);
			
		}	else{
			model.addAttribute("blogname", blogname);
			System.out.println("에러");
		}
			session.setAttribute("check", 1);
			model.addAttribute("code", "success");
			return ".swMem.result";
	}catch(IOException ie){
		ie.printStackTrace();
		model.addAttribute("code", "fail");
		return ".swMem.result";
	}
	}
	@RequestMapping(value="/blogpage")
	public String blogpage(HttpSession session,Model model){
		String m_phone=(String)session.getAttribute("m_phone");
		BlogVo vo=service.searchmybloginfo(m_phone);
		List<BlogInfoVo> list=service.bloginfo(m_phone);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return ".yg.blogpage";
	}
	@RequestMapping(value="/blogpage2")
	public String blogpage2(String bl_name,Model model){
		BlogVo vo=service.searchyourbloginfo(bl_name);
		List<BlogInfoVo> list=service.bloginfo2(bl_name);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return ".yg.blogpage";
	}
	//에디터페이지
		@RequestMapping(value = "/yg/test")
		public String road(String bl_name,Model model) {
			model.addAttribute("bl_name", bl_name);
			return ".yg.editor";
		}
		@RequestMapping(value = "/blogdelete")
		public String blogdelete(int ed_num,Model model,HttpSession session) {
			service.blogdelete(ed_num);
			String m_phone=(String)session.getAttribute("m_phone");
			BlogVo vo=service.searchmybloginfo(m_phone);
			List<BlogInfoVo> list=service.bloginfo(m_phone);
			model.addAttribute("vo", vo);
			model.addAttribute("list", list);
			return ".yg.blogpage";
		}
		@RequestMapping(value = "/blogupdate")
		public String blogupdate(int ed_num,Model model,HttpSession session) {
			EditorVo vo= service.searchtext(ed_num);
			model.addAttribute("vo",vo);
			return ".yg.editor2";
		}
		@RequestMapping(value = "/blogupdateok")
		public String blogupdateok(int ed_num,String ed_title,String ir1,Model model,HttpSession session) {
			EditorVo vo2=new EditorVo(ed_num, null, ed_title, ir1, null, null, 0);
			service.updateeditor(vo2);
			String m_phone=(String)session.getAttribute("m_phone");
			BlogVo vo=service.searchmybloginfo(m_phone);
			List<BlogInfoVo> list=service.bloginfo(m_phone);
			model.addAttribute("vo", vo);
			model.addAttribute("list", list);
			return ".yg.blogpage";
		}
		@RequestMapping(value = "/bloglist")
		public String bloglist(Model model){
			List<BlogVo> list=service.searchbloglist();
			model.addAttribute("list", list);
			return ".yg.bloglist";
		}
}
