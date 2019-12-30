package app.spring.vo;

import java.sql.Date;

public class BqVo {
	private String d_sname;
	private int bq_num;
	private int d_num;
	private String bq_title;
	private String bq_content;
	private Date bq_date;
	private String bq_reply;
	private String bq_state;
	
	public BqVo(){}

	public BqVo(int bq_num, int d_num, String bq_title, String bq_content, Date bq_date, String bq_reply,String bq_state) {
		super();
		this.bq_num = bq_num;
		this.d_num = d_num;
		this.bq_title = bq_title;
		this.bq_content = bq_content;
		this.bq_date = bq_date;
		this.bq_reply = bq_reply;
		this.bq_state = bq_state;
	}
	
	public BqVo(String d_sname,int bq_num, int d_num, String bq_title, String bq_content, Date bq_date, String bq_reply,String bq_state) {
		super();
		this.d_sname= d_sname;
		this.bq_num = bq_num;
		this.d_num = d_num;
		this.bq_title = bq_title;
		this.bq_content = bq_content;
		this.bq_date = bq_date;
		this.bq_reply = bq_reply;
		this.bq_state = bq_state;
	}
	
	public String getD_sname() {
		return d_sname;
	}

	public void setD_sname(String d_sname) {
		this.d_sname = d_sname;
	}
	
	public String getBq_title() {
		return bq_title;
	}

	public void setBq_title(String bq_title) {
		this.bq_title = bq_title;
	}

	public int getBq_num() {
		return bq_num;
	}

	public void setBq_num(int bq_num) {
		this.bq_num = bq_num;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public String getBq_content() {
		return bq_content;
	}

	public void setBq_content(String bq_content) {
		this.bq_content = bq_content;
	}

	public Date getBq_date() {
		return bq_date;
	}

	public void setBq_date(Date bq_date) {
		this.bq_date = bq_date;
	}

	public String getBq_reply() {
		return bq_reply;
	}

	public void setBq_reply(String bq_reply) {
		this.bq_reply = bq_reply;
	}

	public String getBq_state() {
		return bq_state;
	}

	public void setBq_state(String bq_state) {
		this.bq_state = bq_state;
	}
	
	
}
	