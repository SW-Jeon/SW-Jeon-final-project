package app.spring.vo;

public class Criteria {
	private int page;
	private int perPageNum;
	private String m_phone;
	private int counts;
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
	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if(pageCount != cnt){
			this.perPageNum = cnt;
		}else{
			this.perPageNum = pageCount;
	
		}
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	@Override
	public String toString() {
		return "Criteria [page="+page+", perPageNum="+perPageNum+"]";
	}
}
