package app.spring.vo;

public class MemVo {
	private  String m_phone;
	private  String m_name;
	private  String m_mail;
	private  String m_pwd;
	
	public MemVo(){}

	public MemVo(String m_phone, String m_name, String m_mail, String m_pwd) {
		super();
		this.m_phone = m_phone;
		this.m_name = m_name;
		this.m_mail = m_mail;
		this.m_pwd = m_pwd;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_mail() {
		return m_mail;
	}

	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}

	public String getM_pwd() {
		return m_pwd;
	}

	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	};
	
	
}
