package app.spring.vo;

public class ZzimVo {
	private int di_num;
	private int d_num;
	private String m_phone;
	public ZzimVo(){}
	public ZzimVo(int di_num, int d_num, String m_phone) {
		super();
		this.di_num = di_num;
		this.d_num = d_num;
		this.m_phone = m_phone;
		
	}
	
	public int getDi_num() {
		return di_num;
	}
	public void setDi_num(int di_num) {
		this.di_num = di_num;
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
