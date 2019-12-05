package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import app.spring.sw.service.MemService;

@Controller
public class Mem_LoginController {
			@Autowired private MemService service;
}
