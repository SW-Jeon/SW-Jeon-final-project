package app.spring.vo;

public class PicVo {
	private int p_num;
	private String p_pic;
	private int d_num;
	public PicVo(){}
	public PicVo(int p_num, String p_pic, int d_num) {
		super();
		this.p_num = p_num;
		this.p_pic = p_pic;
		this.d_num = d_num;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_pic() {
		return p_pic;
	}
	public void setP_pic(String p_pic) {
		this.p_pic = p_pic;
	}
	public int getD_num() {
		return d_num;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	
}
