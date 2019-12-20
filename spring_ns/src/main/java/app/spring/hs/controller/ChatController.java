package app.spring.hs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	@RequestMapping("/chatgo")
	public String chatgo(){
		return ".chat.chat";
	}
}
