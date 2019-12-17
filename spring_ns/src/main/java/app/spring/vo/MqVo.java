package app.spring.vo;

import java.sql.Date;

public class MqVo {
	private int mq_num;
	private String m_phone;
	private String mq_title;
	private String mq_content;
	private String mq_reply;
	private int mq_state;
	private Date mq_date;
	
	public MqVo(){}

	public MqVo(int mq_num, String m_phone, String mq_title, String mq_content, String mq_reply, int mq_state,
			Date mq_date) {
		super();
		this.mq_num = mq_num;
		this.m_phone = m_phone;
		this.mq_title = mq_title;
		this.mq_content = mq_content;
		this.mq_reply = mq_reply;
		this.mq_state = mq_state;
		this.mq_date = mq_date;
	}

	public int getMq_num() {
		return mq_num;
	}

	public void setMq_num(int mq_num) {
		this.mq_num = mq_num;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getMq_title() {
		return mq_title;
	}

	public void setMq_title(String mq_title) {
		this.mq_title = mq_title;
	}

	public String getMq_content() {
		return mq_content;
	}

	public void setMq_content(String mq_content) {
		this.mq_content = mq_content;
	}

	public String getMq_reply() {
		return mq_reply;
	}

	public void setMq_reply(String mq_reply) {
		this.mq_reply = mq_reply;
	}

	public int getMq_state() {
		return mq_state;
	}

	public void setMq_state(int mq_state) {
		this.mq_state = mq_state;
	}

	public Date getMq_date() {
		return mq_date;
	}

	public void setMq_date(Date mq_date) {
		this.mq_date = mq_date;
	}




	
}
