package top.vo;

public class EstimateVO {
	
	int estimateNO;
	String userID;
	int requestNO;
	String ernumber;// �ο�
	String esite;// ����
	String ejod;// ����
	String equalify;// ����ڰ�
	String eperiod;// �Ⱓ
	String eform;// �������
	String eterm;// ���Ⱓ
	String ewperiod;// �ٹ��ð�
	String ejstart;// �ٹ����� ��¥
	String epay;// �޿�
	String earea;// ����
	public EstimateVO() {
		super();
	}
	
	
	public EstimateVO(int requestNO) {
		super();
		this.requestNO = requestNO;
	}
	

	public EstimateVO(int estimateNO, String userID) {
		super();
		this.estimateNO = estimateNO;
		this.userID = userID;
	}



	public EstimateVO(int estimateNO, String userID, int requestNO, String ernumber, String esite, String ejod,
			String equalify, String eperiod, String eform, String eterm, String ewperiod, String ejstart, String epay,
			String earea) {
		super();
		this.estimateNO = estimateNO;
		this.userID = userID;
		this.requestNO = requestNO;
		this.ernumber = ernumber;
		this.esite = esite;
		this.ejod = ejod;
		this.equalify = equalify;
		this.eperiod = eperiod;
		this.eform = eform;
		this.eterm = eterm;
		this.ewperiod = ewperiod;
		this.ejstart = ejstart;
		this.epay = epay;
		this.earea = earea;
	}

	public EstimateVO(String userID, int requestNO, String ernumber, String esite, String ejod, String equalify,
			String eperiod, String eform, String eterm, String ewperiod, String ejstart, String epay, String earea) {
		super();
		this.userID = userID;
		this.requestNO = requestNO;
		this.ernumber = ernumber;
		this.esite = esite;
		this.ejod = ejod;
		this.equalify = equalify;
		this.eperiod = eperiod;
		this.eform = eform;
		this.eterm = eterm;
		this.ewperiod = ewperiod;
		this.ejstart = ejstart;
		this.epay = epay;
		this.earea = earea;
	}

	public int getEstimateNO() {
		return estimateNO;
	}
	public void setEstimateNO(int estimateNO) {
		this.estimateNO = estimateNO;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getRequestNO() {
		return requestNO;
	}
	public void setRequestNO(int requestNO) {
		this.requestNO = requestNO;
	}
	public String getErnumber() {
		return ernumber;
	}
	public void setErnumber(String ernumber) {
		this.ernumber = ernumber;
	}
	public String getEsite() {
		return esite;
	}
	public void setEsite(String esite) {
		this.esite = esite;
	}
	public String getEjod() {
		return ejod;
	}
	public void setEjod(String ejod) {
		this.ejod = ejod;
	}
	public String getEqualify() {
		return equalify;
	}
	public void setEqualify(String equalify) {
		this.equalify = equalify;
	}
	public String getEperiod() {
		return eperiod;
	}
	public void setEperiod(String eperiod) {
		this.eperiod = eperiod;
	}
	public String getEform() {
		return eform;
	}
	public void setEform(String eform) {
		this.eform = eform;
	}
	public String getEterm() {
		return eterm;
	}
	public void setEterm(String eterm) {
		this.eterm = eterm;
	}
	public String getEwperiod() {
		return ewperiod;
	}
	public void setEwperiod(String ewperiod) {
		this.ewperiod = ewperiod;
	}
	public String getEjstart() {
		return ejstart;
	}
	public void setEjstart(String ejstart) {
		this.ejstart = ejstart;
	}
	public String getEpay() {
		return epay;
	}
	public void setEpay(String epay) {
		this.epay = epay;
	}
	public String getEarea() {
		return earea;
	}
	public void setEarea(String earea) {
		this.earea = earea;
	}
	@Override
	public String toString() {
		return "EstimateVO [userID=" + userID + ", requestNO=" + requestNO
				+ ", ernumber=" + ernumber + ", esite=" + esite + ", ejod=" + ejod + ", equalify=" + equalify
				+ ", eperiod=" + eperiod + ", eform=" + eform + ", eterm=" + eterm + ", ewperiod=" + ewperiod
				+ ", ejstart=" + ejstart + ", epay=" + epay + ", earea=" + earea + "]";
	}
	
	
	
}
