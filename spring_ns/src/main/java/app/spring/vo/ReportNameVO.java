package app.spring.vo;

public class ReportNameVO {
	private int re_num;
	private String a_id;
	private String m_phone;
	private int d_num;
	private String d_sname;
	private String re_title;
	private String re_content;
	private String re_category;
	private String re_state;
	private int black;
	
	public ReportNameVO(){}

	public ReportNameVO(int re_num, String a_id, String m_phone, int d_num, String d_sname, String re_title,
			String re_content, String re_category, String re_state, int black) {
		super();
		this.re_num = re_num;
		this.a_id = a_id;
		this.m_phone = m_phone;
		this.d_num = d_num;
		this.d_sname = d_sname;
		this.re_title = re_title;
		this.re_content = re_content;
		this.re_category = re_category;
		this.re_state = re_state;
		this.black = black;
	}

	public int getRe_num() {
		return re_num;
	}

	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public String getD_sname() {
		return d_sname;
	}

	public void setD_sname(String d_sname) {
		this.d_sname = d_sname;
	}

	public String getRe_title() {
		return re_title;
	}

	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}

	public String getRe_content() {
		return re_content;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	public String getRe_category() {
		return re_category;
	}

	public void setRe_category(String re_category) {
		this.re_category = re_category;
	}

	public String getRe_state() {
		return re_state;
	}

	public void setRe_state(String re_state) {
		this.re_state = re_state;
	}

	public int getBlack() {
		return black;
	}

	public void setBlack(int black) {
		this.black = black;
	}

	
}
