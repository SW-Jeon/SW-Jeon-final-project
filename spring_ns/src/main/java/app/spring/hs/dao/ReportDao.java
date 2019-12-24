package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.ReportNameVO;
import app.spring.vo.ReportVo;

@Repository
public class ReportDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.ReportMapper";
	
	//신고하기
	public int insert(ReportVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".insert",vo);
	}
	
	//신고삭제
	public int delete(int re_num){
		return sqlsessionTemplate.delete(NAMESPACE+".delete",re_num);
	}
	
	//신고상태변경
	public int update(ReportVo vo){
		return sqlsessionTemplate.delete(NAMESPACE+".update",vo);
	}
	
	//신고조회하기
	public ReportVo getInfo(int re_num){
		return sqlsessionTemplate.selectOne(NAMESPACE+".getInfo",re_num);
	}
	
	//신고전체리스트
	public List<ReportVo> listAll(){
		return sqlsessionTemplate.selectList(NAMESPACE+".listAll");
	}
	
	//신고3회이상 당한 업체 조회
	public List<ReportNameVO> getThree(){
		return sqlsessionTemplate.selectList(NAMESPACE+".getThree");
	}
	
	//신고 3회이상 당한 업체 경고상태로 변경하기 
	public int getUpdate(ReportVo vo){
		return sqlsessionTemplate.update(NAMESPACE+".update",vo);
	}
}
