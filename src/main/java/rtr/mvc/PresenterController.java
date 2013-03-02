package rtr.mvc;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/prof")
public class PresenterController {
	
	private final static Random random = new Random();
	
	@RequestMapping(method=RequestMethod.GET, value="/startPresentation")
	public String start(HttpServletRequest request, Model model) {
		//TODO: use the reqs course ID to init a map service
		model.addAttribute("percentage", random.nextGaussian());
		return "prof/statistics";
	}
	
	
}
