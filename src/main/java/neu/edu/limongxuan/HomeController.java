package neu.edu.limongxuan;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import neu.edu.limongxuan.dao.UserDao;
import neu.edu.limongxuan.pojo.GroupDetail;
import neu.edu.limongxuan.pojo.Message;
import neu.edu.limongxuan.pojo.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	UserDao userDao;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Success start on the project", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login";
	}
	
	@RequestMapping(value="login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="validate")
	public String validate(String username,String password,HttpServletRequest request,Model model){
		User user=userDao.validateUser(username, password);
		if(user!=null){
			HttpSession session=request.getSession();
			session.setAttribute("username", username);
			model.addAttribute("username", username);
			return "home";
		}
		return "login";
	}	

	
	@RequestMapping(value="signup")
	public String signup(){
		return "signup";
	}
	
	@RequestMapping(value="signupSubmit")
	public String signupSubmit(String username,String password){
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		
		userDao.saveUser(user);
		return "login";
		
	}
	@RequestMapping(value="createGroup")
	public String createGroup(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		Set<GroupDetail> groupDetails=userDao.getGroupDetailsByUsername(username);
		model.addAttribute("groupDetails", groupDetails);
		for(GroupDetail g:groupDetails){
			System.out.println(g.getGroupName());
		}
		return "createGroup";
	}
	
	@RequestMapping(value="addMessage")
	public String addMessage(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		Set<Message> messages=userDao.getMessageByUsername(username);
		model.addAttribute("messages", messages);
		return "addMessage";
	}
}
