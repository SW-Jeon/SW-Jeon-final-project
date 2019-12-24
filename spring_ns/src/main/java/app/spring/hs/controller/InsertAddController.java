package app.spring.hs.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.multipart.MultipartFile;

import app.spring.hs.service.AdService;
import app.spring.vo.AdVo;


import app.spring.vo.AdvertiserVo;


@Controller
public class InsertAddController {
	@Autowired private AdService service;
 	@RequestMapping("/insertform")
	public String insertform(){
		return ".admin.addtable.addinsert";
	}
	@RequestMapping("/insertadd")
	public String insert(List<MultipartFile> files,String ad_site,int dates,String ad_name,AdvertiserVo vo1,int ad_pay){
		HashMap<String,Object> maps=new HashMap<String, Object>();
		String uploadPath="/upload";
		Date ad_date=service.addate(dates);
		service.adverinsert(vo1);
		int ad_vernum=service.advernum(ad_name);
		maps.put("ad_pay",ad_pay);
		try{
			
				for(int i=0; i<files.size();i++){
				maps.put("ad_pic"+i,files.get(i).getOriginalFilename());
				InputStream ips=files.get(i).getInputStream();
				FileOutputStream fos=new FileOutputStream(uploadPath+"\\" + files.get(i).getOriginalFilename());
				FileCopyUtils.copy(ips, fos);
				
				ips.close();
				fos.close();
				}
				
				AdVo vo=new AdVo(0, "admin", ad_site, ad_date,ad_vernum);
				
				service.adinsert(vo,maps);
				
				
				
			
			
		}catch(IOException io){
			io.printStackTrace();
		}
		return ".main";
	}
	
	
}
