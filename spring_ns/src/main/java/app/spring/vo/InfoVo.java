package app.spring.vo;

import java.sql.Date;

public class InfoVo {
			private int i_num;
			private String a_id;
			private String i_title;
			private String i_content;
			private Date i_date;
			private int i_hit;
	
	public InfoVo(){}

	public InfoVo(int i_num, String a_id, String i_title, String i_content, Date i_date, int i_hit) {
		super();
		this.i_num = i_num;
		this.a_id = a_id;
		this.i_title = i_title;
		this.i_content = i_content;
		this.i_date = i_date;
		this.i_hit = i_hit;
	}

	public int getI_num() {
		return i_num;
	}

	public void setI_num(int i_num) {
		this.i_num = i_num;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getI_title() {
		return i_title;
	}

	public void setI_title(String i_title) {
		this.i_title = i_title;
	}

	public String getI_content() {
		return i_content;
	}

	public void setI_content(String i_content) {
		this.i_content = i_content;
	}

	public Date getI_date() {
		return i_date;
	}

	public void setI_date(Date i_date) {
		this.i_date = i_date;
	}

	public int getI_hit() {
		return i_hit;
	}

	public void setI_hit(int i_hit) {
		this.i_hit = i_hit;
	}
	
}
