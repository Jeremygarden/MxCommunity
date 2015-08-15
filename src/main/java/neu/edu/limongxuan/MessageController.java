package neu.edu.limongxuan;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import neu.edu.limongxuan.dao.MessageDao;
import neu.edu.limongxuan.pojo.Message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MessageController {
    
	@Autowired
	MessageDao messageDao;
	
	@RequestMapping(value="messagePost")
	public String messagePost(String title,String content,HttpServletRequest request){
		Message message=new Message();
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		message.setTitle(title);
		message.setContent(content);
		message.setDate(new Date());
		messageDao.saveMessage(username, message);
		return "redirect:addMessage";
	}
	
	@RequestMapping(value="deletePost/{messageID}")
	public String deleteMessage(@PathVariable int messageID){
		messageDao.deleteMessage(messageID);
		
		return "home";
	}
	
}
