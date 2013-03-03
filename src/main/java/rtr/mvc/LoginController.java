package rtr.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import rtr.repo.MemberDao;
import rtr.repo.ReceptivenessInterface;

@Controller
@RequestMapping(value = "/")
public class LoginController {
	@Autowired
	private MemberDao memberDao;

	@Autowired
	private ReceptivenessInterface receptivness;

	@RequestMapping(method = RequestMethod.GET)
	public String getDisplay(Model model) {
		return "index";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String checkMember(
			@RequestParam(value = "Login", required = false) String username,
			@RequestParam(value = "Password") String courseCode,
			@RequestParam(value = "IsTeacher") String isTeacher,
			HttpServletRequest request, Model model) {
		request.getSession().setAttribute("courseId", courseCode);
		model.addAttribute("courseId", courseCode);
		if (isTeacher.equals("Yes")) {
			return "presenter/startPresentation";
		} else {
			return "audience/startAudienceSplash";
		}
	}
}
