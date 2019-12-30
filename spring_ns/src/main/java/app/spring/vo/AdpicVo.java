package app.spring.vo;

public class AdpicVo {
	private int ad_picnum;
	private int ad_num;
	private String ad_pic;
	public AdpicVo(){}
	public AdpicVo(int ad_picnum, int ad_num, String ad_pic) {
		super();
		this.ad_picnum = ad_picnum;
		this.ad_num = ad_num;
		this.ad_pic = ad_pic;
	}
	public int getAd_picnum() {
		return ad_picnum;
	}
	public void setAd_picnum(int ad_picnum) {
		this.ad_picnum = ad_picnum;
	}
	public int getAd_num() {
		return ad_num;
	}
	public void setAd_num(int ad_num) {
		this.ad_num = ad_num;
	}
	public String getAd_pic() {
		return ad_pic;
	}
	public void setAd_pic(String ad_pic) {
		this.ad_pic = ad_pic;
	}
	
}
