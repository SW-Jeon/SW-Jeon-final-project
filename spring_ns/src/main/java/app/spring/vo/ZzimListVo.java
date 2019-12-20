package app.spring.vo;

public class ZzimListVo {
	private int d_num;
	private String p_pic;
	private String d_sname;
	private String d_phone;
	private String d_addr;
	private String m_phone;
	public ZzimListVo(){}
	public ZzimListVo(int d_num,String p_pic, String d_sname, String d_phone, String d_addr, String m_phone) {
		super();
		this.d_num=d_num;
		this.p_pic = p_pic;
		this.d_sname = d_sname;
		this.d_phone = d_phone;
		this.d_addr = d_addr;
		this.m_phone = m_phone;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	public int getD_num() {
		return d_num;
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
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	
	
}
