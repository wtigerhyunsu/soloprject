package top.vo;



import org.springframework.web.multipart.MultipartFile;

public class UserAttchVO {
	
	String imgname;
	double price;
	String regdate;
	String userID;
	MultipartFile mf;
	public UserAttchVO() {
		super();
	}
	
	public UserAttchVO(String imgname, double price, String regdate, String userID) {
		super();
		this.imgname = imgname;
		this.price = price;
		this.regdate = regdate;
		this.userID = userID;
		
	}
	
	

	public UserAttchVO(String imgname, double price, String regdate, String userID, MultipartFile mf) {
		super();
		this.imgname = imgname;
		this.price = price;
		this.regdate = regdate;
		this.userID = userID;
		this.mf = mf;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}

	@Override
	public String toString() {
		return "UserAttchVO [imgname=" + imgname + ", price=" + price + ", regdate=" + regdate + ", userID=" + userID
				+ "]";
	}
	
	

}
