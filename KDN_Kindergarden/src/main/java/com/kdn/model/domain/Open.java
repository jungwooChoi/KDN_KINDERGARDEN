package com.kdn.model.domain;

public class Open {
	private int o_id;
    private String o_date;
    private int o_t_id; //teacher 포린키
    private int o_c_id; //class 포린키
    private String c_name;
    
    public Open() {	}

	public Open(int o_id, String o_date, int o_t_id, int o_c_id) {
		super();
		this.o_id = o_id;
		this.o_date = o_date;
		this.o_t_id = o_t_id;
		this.o_c_id = o_c_id;
	}

	public Open(int o_id, String o_date, int o_t_id, int o_c_id, String c_name) {
		this.o_id = o_id;
		this.o_date = o_date;
		this.o_t_id = o_t_id;
		this.o_c_id = o_c_id;
		this.c_name = c_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Open [o_id=").append(o_id).append(", o_date=")
				.append(o_date).append(", o_t_id=").append(o_t_id)
				.append(", o_c_id=").append(o_c_id).append("]");
		return builder.toString();
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
	}

	public int getO_t_id() {
		return o_t_id;
	}

	public void setO_t_id(int o_t_id) {
		this.o_t_id = o_t_id;
	}

	public int getO_c_id() {
		return o_c_id;
	}

	public void setO_c_id(int o_c_id) {
		this.o_c_id = o_c_id;
	}

	
    
}
