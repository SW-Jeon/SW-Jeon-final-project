package app.spring.hs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.spring.hs.dao.DetailDao;
import app.spring.js.dao.PicuploadDao;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.vo.PicuploadVo;

@Service
public class DetailService {
	@Autowired private DetailDao dao;
	@Autowired private PicuploadDao pDao;
	public void setDao(DetailDao dao) {
		this.dao = dao;
	}
	
	public DetailVo finds(String d_sname){
		return dao.finds(d_sname);
	}
	//가게정보 등록
	@Transactional(rollbackFor=Exception.class)
	public int insert(DetailVo vo,String r_pic) throws Exception{
		dao.insert1(vo);
		int d_num=dao.seldnum(vo.getB_num());
		System.out.println(d_num);
		PicuploadVo pvo=new PicuploadVo(0, r_pic,d_num);
		pDao.insert2(pvo);
		return 1;
	}
	
	
	public List<DetailVo> findlist(String d_sname){
		return dao.findlist(d_sname);
	}

	public List<DetailVo> finddetail(String d_sname){
		return dao.finddetail(d_sname);
	}
	public List<FindimgVo> findimg(String d_sname){
		return dao.findimg(d_sname);
	}
	public List<FindmenuVo> findmenu(String d_sname){
		return dao.findmenu(d_sname);
	}



}