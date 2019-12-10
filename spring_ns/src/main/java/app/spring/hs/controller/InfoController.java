package app.spring.hs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	@RequestMapping("/infoclose")
	public String infoclose(){
		return ".report.alert";
	}
}
