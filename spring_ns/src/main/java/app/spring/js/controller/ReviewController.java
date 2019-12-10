package app.spring.js.controller;


import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import app.spring.js.service.ReviewService;
import app.spring.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired private ReviewService service;
	
	@RequestMapping(value="/pj/review",method=RequestMethod.GET)
	public String reviewForm(ReviewVo vo){
		return "/pj/review";
	}
	 @RequestMapping(value = "/pj/review",method=RequestMethod.POST)
	    public String requestupload( String m_phone,String r_content,String r_score, Date r_regdate,MultipartHttpServletRequest mtfRequest) {
	        List<MultipartFile> fileList = mtfRequest.getFiles("file1");
	    	String uploadPath="C:/Users/JHTA/git/final-project2/spring_ns/src/main/webapp/resources/upload";
	    
	        for (MultipartFile mf : fileList) {
	            String r_pic1 = mf.getOriginalFilename(); // 원본 파일 명
	        

	            System.out.println("originFileName : " + r_pic1);
	            System.out.println(uploadPath);

	            //String r_pic = path + System.currentTimeMillis() + r_pic1;
	            String r_pic= UUID.randomUUID() + "_" + r_pic1;
	        //	String r_pic2= uploadPath +"\\"+ UUID.randomUUID() +"_" + r_pic1;
	            
	            try {
	                mf.transferTo(new File(uploadPath,r_pic));

				//DB에 저장하기
	        ReviewVo vo=
			new ReviewVo(0, 1, "01022223333", r_content, r_score, r_pic, 0, r_regdate);
		    service.insert(vo);


	            } catch (IllegalStateException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            } catch (IOException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }

	        return ".main";
	    }


}
