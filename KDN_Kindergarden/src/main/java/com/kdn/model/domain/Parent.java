package com.kdn.model.domain;

public class Parent {
	private int p_id;
    private String p_name;
    private String p_pw;
    private String p_phone;
    private String p_address;
    
    public Parent() {}
    
	public Parent(int p_id, String p_name, String p_phone, String p_address) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_address = p_address;
	}

	public Parent(int p_id, String p_name, String p_pw, String p_phone,
			String p_address) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_pw = p_pw;
		this.p_phone = p_phone;
		this.p_address = p_address;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Parent [p_id=").append(p_id).append(", p_name=")
				.append(p_name).append(", p_pw=").append(p_pw)
				.append(", p_phone=").append(p_phone).append(", p_address=")
				.append(p_address).append("]");
		return builder.toString();
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_pw() {
		return p_pw;
	}

	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}

	public String getP_phone() {
		return p_phone;
	}

	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
    
    
}
