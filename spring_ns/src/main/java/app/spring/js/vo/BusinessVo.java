package app.spring.js.vo;

public class BusinessVo {
	private int b_num;
	private int b_bnum;
	private String b_phone;
	private String b_name;
	public BusinessVo(){}
	
	public BusinessVo(int b_num, int b_bnum, String b_phone, String b_name) {
		super();
		this.b_num = b_num;
		this.b_bnum = b_bnum;
		this.b_phone = b_phone;
		this.b_name = b_name;
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
	public String getB_phone() {
		return b_phone;
	}
	public void setB_phone(String b_phone) {
		this.b_phone = b_phone;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	
}
