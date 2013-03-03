package rtr.mvc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import rtr.repo.ReceptivenessInterface;

@Controller
@RequestMapping(value="/audience")
public class AudienceController {
	
	@Autowired
	private ReceptivenessInterface receptiveness;
	
	@RequestMapping(method=RequestMethod.GET, value="/audienceStart")
	public void showPage() {		
	}
	
	@RequestMapping(value="/audienceStart", method=RequestMethod.POST)
	public @ResponseBody HttpStatus postResult(@RequestParam("value") String value, HttpServletRequest request) {
		receptiveness.updateReceptiveness((String) request.getSession().getAttribute("courseId"), request.getSession().getId(), Integer.parseInt(value), 3);
		return HttpStatus.ACCEPTED;
	}

}