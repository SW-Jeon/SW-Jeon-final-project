package app.spring.hs.dao;

import java.util.List;


import app.spring.vo.Criteria;
import app.spring.vo.ZzimListVo;

public interface BoardDao {
	public List<ZzimListVo> listpage(Criteria cri) throws Exception;
	
	public int zzimcount() throws Exception;
	
	
}
