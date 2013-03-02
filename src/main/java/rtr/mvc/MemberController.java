package rtr.mvc;

 import javax.validation.Valid;

import rtr.domain.Member;
import rtr.repo.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
        return "prof/startPresentation?courseCode=" + courseCode;
    }
}
