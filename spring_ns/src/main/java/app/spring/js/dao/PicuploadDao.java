package app.spring.js.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.PicuploadVo;

@Repository
public class PicuploadDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.Picupload.Mapper";
	//사진 등록
	public int insert2(PicuploadVo pvo){
		return sqlSessionTemplate.insert(NAMESPACE+ ".insert",pvo);
	}
}
