package neu.edu.limongxuan.dao;

import neu.edu.limongxuan.pojo.GroupDetail;
import neu.edu.limongxuan.pojo.User;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class GroupDao extends DAO{
    
	@Transactional
	public void saveGroup(String username,GroupDetail groupDetail){
	
			
		
		Session session=getSession();
		begin();
		try{	
		Query query=session.createQuery("from User where username=:username");
		query.setParameter("username", username);
		User user=(User)query.uniqueResult();
		user.getGroupDetails().add(groupDetail);
		commit();
		}catch (RuntimeException e){
			rollback();
			throw e;
		}finally{
		
		
		close();
		}
	
	}
	
	
}
