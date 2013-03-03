package rtr.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import rtr.repo.QuestionDatabase;
import rtr.repo.ReceptivenessInterface;

@Controller
@RequestMapping(value="/audience")
public class AudienceController {
	
	@Autowired
	private ReceptivenessInterface receptiveness;
	
	@Autowired
	private QuestionDatabase questionDatabase;
	
	@RequestMapping(method=RequestMethod.GET, value="/startaudience")
	public String showPage(HttpServletRequest request, Model model) {
		String courseId = (String) request.getSession().getAttribute("courseId");
		model.addAttribute("courseId", courseId);
		return "audience/startAudience";
	}
	
	@RequestMapping(value="/audienceResponse", method=RequestMethod.POST)
	public @ResponseBody HttpStatus postChangeSlider(@RequestParam("value1") String value1, @RequestParam("value2") String value2, HttpServletRequest request) {
		receptiveness.updateReceptiveness((String) request.getSession().getAttribute("courseId"), request.getSession().getId(), Integer.parseInt(value1), Integer.parseInt(value2));
		return HttpStatus.ACCEPTED;
	}
	
	@RequestMapping(value="/audienceQuestion", method=RequestMethod.POST)
	public @ResponseBody HttpStatus postQuestion(@RequestParam("question") String question, HttpServletRequest request){
		questionDatabase.insertQuestion((String)request.getSession().getAttribute("courseId"), question);
		return HttpStatus.ACCEPTED;
	}
}