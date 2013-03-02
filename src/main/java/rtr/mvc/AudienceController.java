package rtr.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/audience")
public class AudienceController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String showPage() {
		return "audience/audience";
	}
	
	@RequestMapping(value="/audienceResponse", method=RequestMethod.GET)
	public String postResult(@RequestParam("result") String result) {
		System.out.println(result);
		return "audience/audience";
	}

}
