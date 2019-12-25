package app.spring.hs.controller;

import java.util.List;

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
		List<ZzimVo> vo1=service.select(m_phone);
		for(ZzimVo vo2:vo1){
			System.out.println(vo2.getD_num());
		}
		ZzimVo vo3=new ZzimVo();
		if(vo3.getD_num()!=d_num){
		service.insert(vo);
		return ".zzim.zzim";
		
		}else{
			service.delete(d_num);
			return ".zzim.zzimdel";
		}
		
	}
}
