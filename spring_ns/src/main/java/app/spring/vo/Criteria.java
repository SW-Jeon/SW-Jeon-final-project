package app.spring.vo;

public class Criteria {
	private int page;
	private int perPageNum;
	private String m_phone;
	public Criteria(){
		this.page=1;
		this.perPageNum=10;
	}
	public int getPageStart(){
		return (this.page-1)*perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <=0){
			this.page=1;
		}else{
		this.page = page;
		}
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <=0 || perPageNum > 100){
			this.perPageNum = 10;
		}else{
			this.perPageNum = perPageNum;
	
		}
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	@Override
	public String toString() {
		return "Criteria [page="+page+", perPageNum="+perPageNum+"]";
	}
}
