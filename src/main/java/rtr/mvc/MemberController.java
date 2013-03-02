package rtr.mvc;

 import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import rtr.repo.MemberDao;

@Controller
@RequestMapping(value="/")
public class MemberController
{
    @Autowired
    private MemberDao memberDao;

    @RequestMapping(method=RequestMethod.GET)
    public String getDisplay(Model model)
    {
        return "index";
    }

    @RequestMapping(method=RequestMethod.POST)
    public String checkMember(@RequestParam(value="courseCode") String courseCode, HttpServletRequest request)
    {
    	request.getSession().setAttribute("courseCode", courseCode);
        return "prof/startPresentation";
    }
}
