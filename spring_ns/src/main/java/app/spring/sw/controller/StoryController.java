package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import app.spring.sw.service.AdminService;
import app.spring.sw.service.StoryService;

@Controller
public class StoryController {
	@Autowired AdminService adService;
	@Autowired StoryService  stService;

}
