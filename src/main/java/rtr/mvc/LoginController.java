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
@RequestMapping(value="/")
public class LoginController
{
    @Autowired
    private MemberDao memberDao;
    
    @Autowired
    private ReceptivenessInterface receptivness;

    @RequestMapping(method=RequestMethod.GET)
    public String getDisplay(Model model)
    {
        return "index";
    }

    @RequestMapping(method=RequestMethod.POST)
    public String checkMember(@RequestParam(value="username", required=false)String username, @RequestParam(value="courseCode") String courseCode, @RequestParam(value="isTeacher") String isTeacher, HttpServletRequest request)
    {
    	/*if (username != null || !username.isEmpty()){
    		Member member = memberDao.findById(username);
    		if (member==null){
    			return "index";
    		}
    		if (member.getRole()=="ROLE_PRESENTER"){
        		
    		}
    	}
    	if (receptivness.getMap().containsKey(courseCode)){
    		return "audience/startPresentation";
    	} else{
    		return "index";
    	}*/
    	request.getSession().setAttribute("courseId", courseCode);
    	if(isTeacher.equals("Yes")){
			return "presenter/startPresentation";
    	} else{
    		return "audience/startaudience";
    	}
    	
    }
}
