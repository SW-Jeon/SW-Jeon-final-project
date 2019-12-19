package app.spring.hs.controller;


import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.yg.service.SelectListService;

@Controller
public class DetailController {
		@Autowired private DetailService service;
		@Autowired private SelectListService service2;
		@RequestMapping(value="/detailpage")	

		public ModelAndView detailpg(String name,int d_num,HttpSession session){
			String phone=(String)session.getAttribute("m_phone");
			List<DetailVo> list=service.finddetail(name);
			List<FindimgVo> list1=service.findimg(name);
			List<FindmenuVo> list2=service.findmenu(name);
			service2.increhit(d_num);
			if(phone!=null){
				Map<String, Object> values=new HashMap<String, Object>();
				values.put("m_phone", phone);
				values.put("d_num", d_num);
				if(service2.checkfood(values)==null){
					service2.joinfood(values);
				}
			}
			ModelAndView mv=new ModelAndView(".detailpage.detailpg");
			mv.addObject("phone",phone);
			mv.addObject("list",list);
			mv.addObject("list1",list1);
			mv.addObject("list2",list2);
			mv.addObject("name",name);
			if(phone!=null){
				int count=service2.foodcount(phone);
				List<DetailVo> flist=service2.foodlist(phone);
				mv.addObject("count",count);
				mv.addObject("flist",flist);
			}
			return mv;
		}
		
		@RequestMapping(value="/pj/detailupload",method=RequestMethod.GET)
		public String detailForm(DetailVo vo){
			return ".pj.detailupload";
		}
		
	/*	@RequestMapping(value = "/pj/detailupload",method=RequestMethod.POST)
	    public String detailupload(0 , String a_id ,String b_num ,String d_sname, Date r_regdate,MultipartHttpServletRequest mtfRequest) {
	        List<MultipartFile> fileList = mtfRequest.getFiles("file1");
	    	String uploadPath="C:/Users/JHTA/git/final-project2/spring_ns/src/main/webapp/resources/upload";
	    
	        for (MultipartFile mf : fileList) {
	            String r_pic = mf.getOriginalFilename(); // 원본 파일 명
	        

	            System.out.println("originFileName : " + r_pic);
	            System.out.println(uploadPath);

	            //String r_pic = path + System.currentTimeMillis() + r_pic1;
	       //     String r_pic= UUID.randomUUID() + "_" + r_pic1;
	        //	String r_pic2= uploadPath +"\\"+ UUID.randomUUID() +"_" + r_pic1;
	            
	            try {
	                mf.transferTo(new File(uploadPath,r_pic));

				//DB에 저장하기
	        DetailVo vo=
			new DetailVo(0, d_num , m_phone, r_content, r_score, r_pic, 0, r_regdate);
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

*/
		}
