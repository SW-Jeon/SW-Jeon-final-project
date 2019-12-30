package app.spring.yg.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import app.spring.vo.ReviewVo;

@Controller
public class BlogController {
	@RequestMapping(value="/bloginsert")
	public String bloginsert(String title,String ir1,MultipartFile file1,Model model){
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
			System.out.println("에러아님");
			model.addAttribute("title", title);
			model.addAttribute("ir1", ir1);
			model.addAttribute("r_pic", r_pic);
		}	else{
			model.addAttribute("title", title);
			model.addAttribute("ir1", ir1);
			System.out.println("에러");
		}
		return ".yg.result2";
	}catch(IOException ie){
		ie.printStackTrace();
		return ".main";
	}
	}
}
