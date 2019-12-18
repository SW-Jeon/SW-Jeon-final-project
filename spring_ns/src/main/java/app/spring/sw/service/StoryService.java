package app.spring.sw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.StoryDao;

@Service
public class StoryService {
	@Autowired StoryDao sDao;

}
