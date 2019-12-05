package app.spring.vo;

import java.sql.Date;

public class ReviewVo {
	private int r_num;
	private int d_num;
	private String m_phone;
	private String r_content;
	private String r_score;
	private String r_pic;
	private int r_hit;
	private Date r_regdate;
	public ReviewVo(){}
	
	public ReviewVo(int r_num, int d_num, String m_phone, String r_content, String r_score, String r_pic, int r_hit,
			Date r_regdate) {
		super();
		this.r_num = r_num;
		this.d_num = d_num;
		this.m_phone = m_phone;
		this.r_content = r_content;
		this.r_score = r_score;
		this.r_pic = r_pic;
		this.r_hit = r_hit;
		this.r_regdate = r_regdate;
	}

	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
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
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_score() {
		return r_score;
	}
	public void setR_score(String r_score) {
		this.r_score = r_score;
	}
	public String getR_pic() {
		return r_pic;
	}
	public void setR_pic(String r_pic) {
		this.r_pic = r_pic;
	}
	public int getR_hit() {
		return r_hit;
	}
	public void setR_hit(int r_hit) {
		this.r_hit = r_hit;
	}
	public Date getR_regdate() {
		return r_regdate;
	}
	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}
	
}
