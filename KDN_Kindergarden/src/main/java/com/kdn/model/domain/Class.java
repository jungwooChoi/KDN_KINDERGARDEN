package com.kdn.model.domain;

public class Class {
	private int c_id;
    private String c_name;
    private int c_total ;
    private String c_time;
    private String c_age;
	
    public Class() {}

	public Class(int c_id, String c_name, int c_total, String c_time,
			String c_age) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_total = c_total;
		this.c_time = c_time;
		this.c_age = c_age;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Class [c_id=").append(c_id).append(", c_name=")
				.append(c_name).append(", c_total=").append(c_total)
				.append(", c_time=").append(c_time).append(", c_age=")
				.append(c_age).append("]");
		return builder.toString();
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getC_total() {
		return c_total;
	}

	public void setC_total(int c_total) {
		this.c_total = c_total;
	}

	public String getC_time() {
		return c_time;
	}

	public void setC_time(String c_time) {
		this.c_time = c_time;
	}

	public String getC_age() {
		return c_age;
	}

	public void setC_age(String c_age) {
		this.c_age = c_age;
	}

}
