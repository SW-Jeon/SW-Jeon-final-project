package app.spring.vo;

public class MenuVo {

	private int me_num;
	private  int d_num;
	private  String me_name;
	private  int me_pay;

	public MenuVo(){}

	public MenuVo(int me_num, int d_num, String me_name, int me_pay) {
		super();
		this.me_num = me_num;
		this.d_num = d_num;
		this.me_name = me_name;
		this.me_pay = me_pay;
	}

	public int getMe_num() {
		return me_num;
	}

	public void setMe_num(int me_num) {
		this.me_num = me_num;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
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


	

