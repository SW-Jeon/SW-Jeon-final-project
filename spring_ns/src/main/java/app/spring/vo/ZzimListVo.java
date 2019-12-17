package app.spring.vo;

public class ZzimListVo {
	private String p_pic;
	private String d_sname;
	private String d_phone;
	private String d_addr;
	public ZzimListVo(){}
	public ZzimListVo(String p_pic, String d_sname, String d_phone, String d_addr) {
		super();
		this.p_pic = p_pic;
		this.d_sname = d_sname;
		this.d_phone = d_phone;
		this.d_addr = d_addr;
	}
	public String getP_pic() {
		return p_pic;
	}
	public void setP_pic(String p_pic) {
		this.p_pic = p_pic;
	}
	public String getD_sname() {
		return d_sname;
	}
	public void setD_sname(String d_sname) {
		this.d_sname = d_sname;
	}
	public String getD_phone() {
		return d_phone;
	}
	public void setD_phone(String d_phone) {
		this.d_phone = d_phone;
	}
	public String getD_addr() {
		return d_addr;
	}
	public void setD_addr(String d_addr) {
		this.d_addr = d_addr;
	}
	
}
