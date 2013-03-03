package rtr.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rtr.repo.ReceptivenessInterface;

@Controller
@RequestMapping(value="/audience")
public class AudienceController {
	
	@Autowired
	private ReceptivenessInterface receptiveness;
	
	@RequestMapping(method=RequestMethod.GET, value="/startPresentation")
	public String start(HttpServletRequest request, Model model) {
		return "audience/startPresentation";
	}

}
