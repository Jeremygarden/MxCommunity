package neu.edu.limongxuan.dao;

import java.util.List;
import java.util.Set;

import neu.edu.limongxuan.pojo.GroupDetail;
import neu.edu.limongxuan.pojo.Message;
import neu.edu.limongxuan.pojo.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao extends DAO {
    public User validateUser(String username, String password){
    	Session session=getSession();
    	begin();
    	Query query=session.createQuery("from User where username=:username and password=:password");
    	query.setParameter("username", username);
    	query.setParameter("password", password);
    	User user=(User) query.uniqueResult();
    	commit();
    	close();
    	return user;
    	
    }
    
    public void saveUser(User user){
    	Session session=getSession();
    	begin();
    	session.save(user);
    	commit();
    	close();
    }
    
    public Set<GroupDetail> getGroupDetailsByUsername(String username){
    	Session session=getSession();
    	begin();
    	Query query=session.createQuery("from User where username=:username");
    	query.setParameter("username", username);
    	User user=(User)query.uniqueResult();
    	Set<GroupDetail> groupDetails=user.getGroupDetails();
    	return groupDetails;
    }
    
    public Set<Message> getMessageByUsername(String username){
    	Session session=getSession();
    	begin();
    	Query query=session.createQuery("from User where username=:username");
    	query.setParameter("username", username);
    	User user=(User)query.uniqueResult();
    	Set<Message> messages=user.getMessages();
    	return messages;
    }
}
