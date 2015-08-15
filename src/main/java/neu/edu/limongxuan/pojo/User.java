package neu.edu.limongxuan.pojo;

import java.util.HashSet;
import java.util.Set;

public class User {
    private int userID;
    private String username;
    private String password;
    
    
    private Set<GroupDetail> groupDetails=new HashSet<GroupDetail>();
    
    private Set<Message> messages=new HashSet<Message>();
    
    
	public Set<GroupDetail> getGroupDetails() {
		return groupDetails;
	}
	public void setGroupDetails(Set<GroupDetail> groupDetails) {
		this.groupDetails = groupDetails;
	}
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
    
}
