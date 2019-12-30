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
		ZzimVo vo1=service.select(vo);
		System.out.println(vo1);
		if(vo1==null){
			service.insert(vo);
			return ".zzim.zzim";
		}
		if(vo1.getD_num()!=d_num){
			service.insert(vo);
			return ".zzim.zzim";
		}else{
			service.delete(d_num);
			return ".zzim.zzimdel";
		}
		/*if(vo1.size()==0){
			service.insert(vo);
			return ".zzim.zzim";
		}
		System.out.println(d_num+"로로로");
		for(ZzimVo vo2:vo1){
			System.out.println(vo2.getD_num());
			/*if(vo2.getD_num()==d_num){
				service.delete(d_num);
				return ".zzim.zzimdel";
			
			}else{
				service.insert(vo);
				return ".zzim.zzim";
			}
		}*/
	}
}
