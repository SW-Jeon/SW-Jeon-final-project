package app.spring.vo;

import java.sql.Date;

public class BlogInfoVo {
	private String bl_name;
	private String m_phone;
	private String bl_profile;
	private int ed_num;
	private String ed_title;
	private String ed_content;
	private String ed_pic;
	private Date ed_date;
	private int ed_hit;
	
	public BlogInfoVo() {}
	public BlogInfoVo(String bl_name, String m_phone, String bl_profile, int ed_num, String ed_title, String ed_content,
			String ed_pic, Date ed_date, int ed_hit) {
		super();
		this.bl_name = bl_name;
		this.m_phone = m_phone;
		this.bl_profile = bl_profile;
		this.ed_num = ed_num;
		this.ed_title = ed_title;
		this.ed_content = ed_content;
		this.ed_pic = ed_pic;
		this.ed_date = ed_date;
		this.ed_hit = ed_hit;
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
	public int getEd_num() {
		return ed_num;
	}
	public void setEd_num(int ed_num) {
		this.ed_num = ed_num;
	}
	public String getEd_title() {
		return ed_title;
	}
	public void setEd_title(String ed_title) {
		this.ed_title = ed_title;
	}
	public String getEd_content() {
		return ed_content;
	}
	public void setEd_content(String ed_content) {
		this.ed_content = ed_content;
	}
	public String getEd_pic() {
		return ed_pic;
	}
	public void setEd_pic(String ed_pic) {
		this.ed_pic = ed_pic;
	}
	public Date getEd_date() {
		return ed_date;
	}
	public void setEd_date(Date ed_date) {
		this.ed_date = ed_date;
	}
	public int getEd_hit() {
		return ed_hit;
	}
	public void setEd_hit(int ed_hit) {
		this.ed_hit = ed_hit;
	}
}
