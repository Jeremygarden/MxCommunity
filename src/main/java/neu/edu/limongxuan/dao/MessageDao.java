package neu.edu.limongxuan.dao;

import neu.edu.limongxuan.pojo.Message;
import neu.edu.limongxuan.pojo.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;


@Repository
public class MessageDao extends DAO {
   
	public void saveMessage(String username,Message message){
		Session session=getSession();
		begin();
		Query query=session.createQuery("from User where username=:username");
		query.setParameter("username", username);
		User user=(User)query.uniqueResult();
		user.getMessages().add(message);
		commit();
		close();
		
	}
	
	
	public void deleteMessage(int messageID){
		Session session=getSession();
		begin();
		   Message message=(Message)session.get(Message.class, messageID);
		   if(message!=null){
		   session.delete(message);
		   }else{
			  System.out.println("ssssssss");
		    }
		  commit();
		  close();
		
	}
}
