package top.vo;

public class UserVO {

	String userID;
	String userPwd;
	String userName;
	String userAdd;
	String userPhone;
	String userMail;
	String userDate;

	public UserVO() {
		super();
	}
	

	public UserVO(String userName, String userAdd, String userPhone, String userMail, String userDate) {
		super();
		this.userName = userName;
		this.userAdd = userAdd;
		this.userPhone = userPhone;
		this.userMail = userMail;
		this.userDate = userDate;
	}


	public UserVO(String userID, String userPwd, String userName, String userAdd, String userPhone, String userMail,
			String userDate) {
		super();
		this.userID = userID;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userAdd = userAdd;
		this.userPhone = userPhone;
		this.userMail = userMail;
		this.userDate = userDate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAdd() {
		return userAdd;
	}

	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserDate() {
		return userDate;
	}

	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}

	@Override
	public String toString() {
		return "UserVO [userID=" + userID + ", userPwd=" + userPwd + ", userName=" + userName + ", userAdd=" + userAdd
				+ ", userPhone=" + userPhone + ", userMail=" + userMail + ", userDate=" + userDate + "]";
	}

}
