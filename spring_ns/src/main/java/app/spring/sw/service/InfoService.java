package app.spring.sw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.InfoDao;

@Service
public class InfoService {
	@Autowired InfoDao iDao;
}
