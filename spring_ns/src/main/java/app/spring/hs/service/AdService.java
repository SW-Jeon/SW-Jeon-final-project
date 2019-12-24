package app.spring.hs.service;

import java.sql.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.AdDao;
import app.spring.vo.AdVo;
import app.spring.vo.AdpicVo;
import app.spring.vo.AdvertiserVo;
import app.spring.vo.PayVo;


@Service
public class AdService {
@Autowired private AdDao dao;
	public int adinsert(AdVo vo,HashMap<String, Object> maps){
		 dao.adinsert(vo);
		 
		 int ad_num=dao.adnum();
		 PayVo pvo = new PayVo(0, (Integer)maps.get("ad_pay"), ad_num);
		 dao.payinsert(pvo);
		 
		 for(int i=0;i<maps.size();i++){
			 AdpicVo vop=new AdpicVo(0, ad_num,(String)maps.get("ad_pic"+i));
			 dao.adpic(vop);
		 }
		 return 1;
	}
	public Date addate(int dates){
		return dao.addate(dates);
	}
	public int adverinsert(AdvertiserVo vo){
		return dao.adverinsert(vo);
	}
	public int advernum(String ad_name){
		return dao.advernum(ad_name);
	}
	public int adnum(){
		return dao.adnum();
	}
	
}
