package app.spring.vo;

public class SearchListVo {
	private int d_num;
	private String a_id;
	private int b_num;
	private String d_sname;
	private String d_kind;
	private String d_park;
	private String d_holi;
	private String d_time;
	private String d_phone;
	private String d_addr;
	private int d_hit;
	private double r_score;
	private String p_pic;
	public SearchListVo() {}
	public SearchListVo(int d_num, String a_id, int b_num, String d_sname, String d_kind, String d_park, String d_holi,
			String d_time, String d_phone, String d_addr, int d_hit, double r_score, String p_pic) {
		super();
		this.d_num = d_num;
		this.a_id = a_id;
		this.b_num = b_num;
		this.d_sname = d_sname;
		this.d_kind = d_kind;
		this.d_park = d_park;
		this.d_holi = d_holi;
		this.d_time = d_time;
		this.d_phone = d_phone;
		this.d_addr = d_addr;
		this.d_hit = d_hit;
		this.r_score = r_score;
		this.p_pic = p_pic;
	}
	public int getD_num() {
		return d_num;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getD_sname() {
		return d_sname;
	}
	public void setD_sname(String d_sname) {
		this.d_sname = d_sname;
	}
	public String getD_kind() {
		return d_kind;
	}
	public void setD_kind(String d_kind) {
		this.d_kind = d_kind;
	}
	public String getD_park() {
		return d_park;
	}
	public void setD_park(String d_park) {
		this.d_park = d_park;
	}
	public String getD_holi() {
		return d_holi;
	}
	public void setD_holi(String d_holi) {
		this.d_holi = d_holi;
	}
	public String getD_time() {
		return d_time;
	}
	public void setD_time(String d_time) {
		this.d_time = d_time;
	}
	public String getD_phone() {
		return d_phone;
	}
	public void setD_phone(String d_phone) {
		this.d_phone = d_phone;
	}
	public String getD_addr() {
		return d_addr;
	}
	public void setD_addr(String d_addr) {
		this.d_addr = d_addr;
	}
	public int getD_hit() {
		return d_hit;
	}
	public void setD_hit(int d_hit) {
		this.d_hit = d_hit;
	}
	public double getR_score() {
		return r_score;
	}
	public void setR_score(double r_score) {
		this.r_score = r_score;
	}
	public String getP_pic() {
		return p_pic;
	}
	public void setP_pic(String p_pic) {
		this.p_pic = p_pic;
	}
}
