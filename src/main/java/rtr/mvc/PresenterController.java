package rtr.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/prof")
public class PresenterController {
	@RequestMapping(method=RequestMethod.GET,  value="/startPresentation")
	public String startPresentation(@PathVariable("coursePassword") String coursePassword){
		return "/prof/startPresentation";
	}
}
