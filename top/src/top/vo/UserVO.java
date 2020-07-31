package top.vo;

public class UserVO {

	String userID;
	String userPwd;
	String userName;
	String userAdd;
	String userPhone;
	String userMail;
	String userDate;
	String position;
	String adcheck;

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
			String userDate, String position, String adcheck) {
		super();
		this.userID = userID;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userAdd = userAdd;
		this.userPhone = userPhone;
		this.userMail = userMail;
		this.userDate = userDate;
		this.position = position;
		this.adcheck = adcheck;
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
	
	

	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	
	public String getAdcheck() {
		return adcheck;
	}


	public void setAdcheck(String adcheck) {
		this.adcheck = adcheck;
	}


	@Override
	public String toString() {
		return "UserVO [userID=" + userID + ", userPwd=" + userPwd + ", userName=" + userName + ", userAdd=" + userAdd
				+ ", userPhone=" + userPhone + ", userMail=" + userMail + ", userDate=" + userDate + ", position="
				+ position + ", adcheck=" + adcheck + "]";
	}



}
