package rtr.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/prof")
public class PresenterController {
	@RequestMapping(method=RequestMethod.GET,  value="/startPresentation")
	public String startPresentation(HttpServletRequest request){
		return "/prof/startPresentation";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/startPresentation")
	public String start()
}
