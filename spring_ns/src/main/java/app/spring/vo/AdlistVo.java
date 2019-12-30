package app.spring.vo;

public class AdlistVo {
	private int ad_num;
	private String ad_name;
	private String ad_site;
	private String ad_pic;
	private int ad_pay;
	public AdlistVo(){}
	public AdlistVo(int ad_num, String ad_name, String ad_site, String ad_pic, int ad_pay) {
		super();
		this.ad_num = ad_num;
		this.ad_name = ad_name;
		this.ad_site = ad_site;
		this.ad_pic = ad_pic;
		this.ad_pay = ad_pay;
	}
	public int getAd_num() {
		return ad_num;
	}
	public void setAd_num(int ad_num) {
		this.ad_num = ad_num;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_site() {
		return ad_site;
	}
	public void setAd_site(String ad_site) {
		this.ad_site = ad_site;
	}
	public String getAd_pic() {
		return ad_pic;
	}
	public void setAd_pic(String ad_pic) {
		this.ad_pic = ad_pic;
	}
	public int getAd_pay() {
		return ad_pay;
	}
	public void setAd_pay(int ad_pay) {
		this.ad_pay = ad_pay;
	}
	
}
