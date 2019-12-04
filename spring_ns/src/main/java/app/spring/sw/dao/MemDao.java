package app.spring.sw.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.MemVo;

@Repository
public class MemDao {
		@Autowired private SqlSessionTemplate sqlSessionTemplate;
		private final String NAMESPACE = "app.spring.mybatis.mapper.MemMapper";
		
		public int insert(MemVo vo){
			return sqlSessionTemplate.insert(NAMESPACE+".insert",vo);
		}

}
