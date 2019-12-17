package app.spring.js.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
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


import app.spring.js.service.ReviewService;
import app.spring.vo.ReviewVo;


@Controller
public class ReviewController {
	@Autowired private ReviewService service;
	
	@RequestMapping(value="/pj/review",method=RequestMethod.GET)
	public String reviewForm(int d_num,Model model){
		model.addAttribute("d_num",d_num);
		System.out.println(d_num);
		return ".pj.review";
	}
	
	@RequestMapping(value="/pj/reviewlist")
	public String reviewlist(Model model){
		List<ReviewVo> rlist=service.list();
		model.addAttribute("list",rlist);
		return ".pj.reviewlist";
	}

	

	
	@RequestMapping(value="/pj/review",method=RequestMethod.POST)
	// MultipartFile : 전송된 파일을 대한 정보를 갖는 객체
	public String fileupload(int d_num,String r_content,String star_input, Date r_regdate,
			MultipartFile file1,HttpSession session){
		//업로드할 폴더의 절대경로 얻어오기
		String uploadPath="C:/Users/JHTA/git/final-project2/spring_ns/src/main/webapp/resources/upload";
		System.out.println(star_input);
		System.out.println(uploadPath);
		String m_phone=(String)session.getAttribute("m_phone");
		System.out.println(m_phone);
		//전송된 파일명
		String r_pic=file1.getOriginalFilename();
		//저장될 파일명(중복되지 않는 이름으로 만들기)
		//String r_pic=UUID.randomUUID() +"_" + orgfilename;
		try{
			//전송된 파일을 읽어오기 위한 스트림
			InputStream fis=file1.getInputStream();
			//전송된 파일을 서버에 출력하기 위한 스트림
			FileOutputStream fos=
					new FileOutputStream(uploadPath+"\\" + r_pic);
			//파일복사하기(업로드하기)
			FileCopyUtils.copy(fis, fos);
			fis.close();
			fos.close();
			//File f=new File(uploadPath +"\\" + savefilename);
			//long filesize=f.length();
			//DB에 저장하기
			ReviewVo vo=
					new ReviewVo(0, d_num , m_phone, r_content, star_input, r_pic, 0, r_regdate);
			service.insert(vo);
			
			return ".";
		}catch(IOException ie){
			ie.printStackTrace();
			return "error";
		}
	}

}
