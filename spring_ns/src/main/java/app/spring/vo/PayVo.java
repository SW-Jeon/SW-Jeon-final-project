package app.spring.vo;

public class PayVo {
		private int ad_pay;
		private int ad_num;
		
		public PayVo(){}

		public PayVo(int ad_pay, int ad_num) {
			super();
			this.ad_pay = ad_pay;
			this.ad_num = ad_num;
		}

		public int getAd_pay() {
			return ad_pay;
		}

		public void setAd_pay(int ad_pay) {
			this.ad_pay = ad_pay;
		}

		public int getAd_num() {
			return ad_num;
		}

		public void setAd_num(int ad_num) {
			this.ad_num = ad_num;
		}
		
}
