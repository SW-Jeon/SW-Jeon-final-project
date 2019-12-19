package app.spring.vo;

public class FoodVo {
	private int f_num;
	private int d_num;
	private String m_phone;
	public FoodVo() {}
	public FoodVo(int f_num, int d_num, String m_phone) {
		super();
		this.f_num = f_num;
		this.d_num = d_num;
		this.m_phone = m_phone;
	}
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public int getD_num() {
		return d_num;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
}
