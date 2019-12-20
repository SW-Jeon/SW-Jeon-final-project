package app.spring.vo;

public class BusinessVo {
	private int b_num;
	private int b_bnum;
	private int b_phone;
	private String b_name;
	private int b_pwd;
	private String b_state;
	
	public BusinessVo(){}

	public BusinessVo(int b_num, int b_bnum, int b_phone, String b_name, int b_pwd, String b_state) {
		super();
		this.b_num = b_num;
		this.b_bnum = b_bnum;
		this.b_phone = b_phone;
		this.b_name = b_name;
		this.b_pwd = b_pwd;
		this.b_state = b_state;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public int getB_bnum() {
		return b_bnum;
	}

	public void setB_bnum(int b_bnum) {
		this.b_bnum = b_bnum;
	}

	public int getB_phone() {
		return b_phone;
	}

	public void setB_phone(int b_phone) {
		this.b_phone = b_phone;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public int getB_pwd() {
		return b_pwd;
	}

	public void setB_pwd(int b_pwd) {
		this.b_pwd = b_pwd;
	}

	public String getB_state() {
		return b_state;
	}

	public void setB_state(String b_state) {
		this.b_state = b_state;
	}

}

	