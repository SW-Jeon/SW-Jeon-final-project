package app.spring.vo;

public class FindmenuVo {
	private String me_name;
	private int me_pay;
	public FindmenuVo(){}
	public FindmenuVo(String me_name, int me_pay) {
		super();
		this.me_name = me_name;
		this.me_pay = me_pay;
	}
	public String getMe_name() {
		return me_name;
	}
	public void setMe_name(String me_name) {
		this.me_name = me_name;
	}
	public int getMe_pay() {
		return me_pay;
	}
	public void setMe_pay(int me_pay) {
		this.me_pay = me_pay;
	}
	
}
