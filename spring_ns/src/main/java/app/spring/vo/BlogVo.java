package app.spring.vo;

public class BlogVo {
	private String bl_name;
	private String m_phone;
	private String bl_profile;
	public BlogVo() {}
	public BlogVo(String bl_name, String m_phone, String bl_profile) {
		super();
		this.bl_name = bl_name;
		this.m_phone = m_phone;
		this.bl_profile = bl_profile;
	}
	public String getBl_name() {
		return bl_name;
	}
	public void setBl_name(String bl_name) {
		this.bl_name = bl_name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getBl_profile() {
		return bl_profile;
	}
	public void setBl_profile(String bl_profile) {
		this.bl_profile = bl_profile;
	}
}
