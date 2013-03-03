package rtr.mvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import rtr.domain.Receptiveness;
import rtr.repo.QuestionDatabase;
import rtr.repo.ReceptivenessInterface;


@Controller
@RequestMapping("/presenter")
public class PresenterController {
	
	@Autowired
	private ReceptivenessInterface receptiveness;
	
	@Autowired
	private QuestionDatabase questionDatabase;
	
	@RequestMapping(method=RequestMethod.GET, value="/startPresentation")
	public void initalize(HttpServletRequest request, Model model) {
		receptiveness.startTrackingSession((String)request.getSession().getAttribute("courseId"));
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/startPresentation")
	public String start(HttpServletRequest request, Model model) {
		return "redirect:statistics";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/statistics")	 
	public @ResponseBody Receptiveness refresh(HttpServletRequest request, Model model){
		String courseId = (String) request.getSession().getAttribute("courseId");
		return receptiveness.getReceptiveness(courseId);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/questions")	 
	public @ResponseBody List<String> getQuestions(HttpServletRequest request, Model model){
		String courseId = (String) request.getSession().getAttribute("courseId");
		return questionDatabase.getQuestions(courseId);
	}
}
