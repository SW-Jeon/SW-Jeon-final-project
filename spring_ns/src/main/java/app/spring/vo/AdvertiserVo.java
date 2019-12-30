package app.spring.vo;

public class AdvertiserVo {
	private int ad_vernum;
	private String ad_name;
	public AdvertiserVo(){}
	public AdvertiserVo(int ad_vernum, String ad_name) {
		super();
		this.ad_vernum = ad_vernum;
		this.ad_name = ad_name;
	}
	public int getAd_vernum() {
		return ad_vernum;
	}
	public void setAd_vernum(int ad_vernum) {
		this.ad_vernum = ad_vernum;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	
}
