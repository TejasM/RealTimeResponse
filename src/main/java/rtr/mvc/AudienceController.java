package rtr.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/audience")
public class AudienceController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String showPage() {
		return "audience/startAudience";
	}
	
	@RequestMapping(value="/audienceResponse", method=RequestMethod.POST)
	public @ResponseBody String postResult(@RequestParam("value") String value) {
		System.out.println(value);
		return "OK";
	}

}