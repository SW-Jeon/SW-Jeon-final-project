package app.spring.vo;

import java.sql.Date;

public class AdVo {
	private int ad_num;
	private String a_id;
	private String ad_site;
	private Date ad_date;
	private int ad_vernum;
	
	public AdVo(){}

	public AdVo(int ad_num, String a_id, String ad_site, Date ad_date,int ad_vernum) {
		super();
		this.ad_num = ad_num;
		this.a_id = a_id;
		this.ad_site = ad_site;
		this.ad_date = ad_date;
		this.ad_vernum=ad_vernum;
	}

	public int getAd_num() {
		return ad_num;
	}

	public void setAd_num(int ad_num) {
		this.ad_num = ad_num;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getAd_site() {
		return ad_site;
	}

	public void setAd_site(String ad_site) {
		this.ad_site = ad_site;
	}

	public Date getAd_date() {
		return ad_date;
	}

	public void setAd_date(Date ad_date) {
		this.ad_date = ad_date;
	}
	public int getAd_vernum() {
		return ad_vernum;
	}
	public void setAd_vernum(int ad_vernum) {
		this.ad_vernum = ad_vernum;
	}
	
	
}
