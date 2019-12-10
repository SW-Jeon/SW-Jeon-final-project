package app.spring.sw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.MemDao;
import app.spring.vo.MemVo;

@Service
public class MemService {
		@Autowired private MemDao mDao;
		
		//회원가입
		public int insert(MemVo vo){
			return mDao.insert(vo);
		}
		
		//업데이트
		public int update(MemVo vo){
			return mDao.update(vo);
		}
		
		//회원탈퇴
		public int delete(String m_phone){
			return mDao.delete(m_phone);
		}
		
		//회원조회
		public MemVo getInfo(String m_phone){
			return mDao.getInfo(m_phone);
		}
		
		//전체조회
		public  List<MemVo> listAll(){
			return mDao.listAll();
		}
		
		//회원아이디찾기
		public String getPhone(MemVo vo){
			return mDao.getPhone(vo);
		}
		
		//비밀번호 변경
		public int changePwd(MemVo vo){
			return mDao.changePwd(vo);
		}
}
