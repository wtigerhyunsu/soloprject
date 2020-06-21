package top.vo;

public class RequestVO {

	String userID;
	int requestNO;
	String rnumber;// 인원
	String site;// 현장
	String jod;// 업무
	String qualify;// 요원자격
	String period;// 기간
	String form;// 고용형태
	String term;// 고용기간
	String wperiod;// 근무시간
	String jstart;// 근무시작날자
	String pay;// 급여
	String area;//지역

	public RequestVO() {
		super();
	}

	public RequestVO(String userID, String rnumber, String site, String jod, String qualify, String period, String form,
			String term, String wperiod, String jstart, String pay, String area) {
		super();
		this.userID = userID;
		this.rnumber = rnumber;
		this.site = site;
		this.jod = jod;
		this.qualify = qualify;
		this.period = period;
		this.form = form;
		this.term = term;
		this.wperiod = wperiod;
		this.jstart = jstart;
		this.pay = pay;
		this.area = area;
	}

	public RequestVO(String userID, int requestNO, String rnumber, String site, String jod, String qualify,
			String period, String form, String term, String wperiod, String jstart, String pay, String area) {
		super();
		this.userID = userID;
		this.requestNO = requestNO;
		this.rnumber = rnumber;
		this.site = site;
		this.jod = jod;
		this.qualify = qualify;
		this.period = period;
		this.form = form;
		this.term = term;
		this.wperiod = wperiod;
		this.jstart = jstart;
		this.pay = pay;
		this.area = area;
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

	public String getRnumber() {
		return rnumber;
	}

	public void setRnumber(String rnumber) {
		this.rnumber = rnumber;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getJod() {
		return jod;
	}

	public void setJod(String jod) {
		this.jod = jod;
	}

	public String getQualify() {
		return qualify;
	}

	public void setQualify(String qualify) {
		this.qualify = qualify;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getWperiod() {
		return wperiod;
	}

	public void setWperiod(String wperiod) {
		this.wperiod = wperiod;
	}

	public String getJstart() {
		return jstart;
	}

	public void setJstart(String jstart) {
		this.jstart = jstart;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Override
	public String toString() {
		return "RequestVO [userID=" + userID + ", rnumber=" + rnumber + ", site=" + site + ", jod=" + jod + ", qualify="
				+ qualify + ", period=" + period + ", form=" + form + ", term=" + term + ", wperiod=" + wperiod
				+ ", jstart=" + jstart + ", pay=" + pay + ", area=" + area + "]";
	}


}
