package app.spring.vo;

public class CareVo {
		private int ca_num;
		private  String ca_state;
		private  int d_num;
		
		public CareVo(){}

		public CareVo(int ca_num, String ca_state, int d_num) {
			super();
			this.ca_num = ca_num;
			this.ca_state = ca_state;
			this.d_num = d_num;
		}

		public int getCa_num() {
			return ca_num;
		}

		public void setCa_num(int ca_num) {
			this.ca_num = ca_num;
		}

		public String getCa_state() {
			return ca_state;
		}

		public void setCa_state(String ca_state) {
			this.ca_state = ca_state;
		}

		public int getD_num() {
			return d_num;
		}

		public void setD_num(int d_num) {
			this.d_num = d_num;
		}
		
}
