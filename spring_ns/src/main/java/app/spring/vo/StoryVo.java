package app.spring.vo;

import java.sql.Date;

public class StoryVo {
	private int s_num;
	private String a_id;
	private String s_title;
	private String s_content;
	private Date s_date;
	private int s_hit;
	
	public StoryVo(){}

	public StoryVo(int s_num, String a_id, String s_title, String s_content, Date s_date, int s_hit) {
		super();
		this.s_num = s_num;
		this.a_id = a_id;
		this.s_title = s_title;
		this.s_content = s_content;
		this.s_date = s_date;
		this.s_hit = s_hit;
	}

	public int getS_num() {
		return s_num;
	}

	public void setS_num(int s_num) {
		this.s_num = s_num;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getS_title() {
		return s_title;
	}

	public void setS_title(String s_title) {
		this.s_title = s_title;
	}

	public String getS_content() {
		return s_content;
	}

	public void setS_content(String s_content) {
		this.s_content = s_content;
	}

	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}

	public int getS_hit() {
		return s_hit;
	}

	public void setS_hit(int s_hit) {
		this.s_hit = s_hit;
	}
	
}
