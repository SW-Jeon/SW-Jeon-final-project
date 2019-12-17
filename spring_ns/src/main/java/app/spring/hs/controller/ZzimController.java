package app.spring.hs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.spring.hs.service.ZzimService;
import app.spring.vo.ZzimVo;

@Controller
public class ZzimController {
	@Autowired private ZzimService service;
	@RequestMapping("/zzimOk")
	public String zzimOk(ZzimVo vo,String m_phone,int d_num){
		System.out.println(m_phone);
		ZzimVo vo1=service.select(m_phone);
		
		if(vo1==null){
		service.insert(vo);
		return ".zzim.zzim";
		
		}else{
			service.delete(d_num);
			return ".zzim.zzimdel";
		}
	}
}
