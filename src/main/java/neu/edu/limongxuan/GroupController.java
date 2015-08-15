package neu.edu.limongxuan;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import neu.edu.limongxuan.dao.GroupDao;
import neu.edu.limongxuan.pojo.GroupDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GroupController {

	@Autowired
	GroupDao groupDao;
	
	
	
	
	@RequestMapping(value="/savegroup")
	public String saveGroup(String name,HttpServletRequest request){
		
		GroupDetail groupDetail=new GroupDetail();
		
		groupDetail.setGroupName(name);
		
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		groupDao.saveGroup(username, groupDetail);
		return "redirect:createGroup";
	}
	
}
