package com.kdn.model.domain;

import java.io.Serializable;

public class Enter implements Serializable{
	private int e_id;
    private String e_date;
    private String e_status;
    private String e_etc;
    private int e_p_id; //부모 포린키
    private int e_o_id; //개설된 반 포린키
	private int e_k_id; //자녀 포린키
	
	private String k_name; //kid 이름
	private String c_name; //class name
	private String p_name; //parent name
	
	public Enter() {}
	
	public Enter(int e_id, String e_date, String e_status, String e_etc,
			int e_p_id, int e_o_id, int e_k_id) {
		super();
		this.e_id = e_id;
		this.e_date = e_date;
		this.e_status = e_status;
		this.e_etc = e_etc;
		this.e_p_id = e_p_id;
		this.e_o_id = e_o_id;
		this.e_k_id = e_k_id;
	}
	
	public Enter(int e_id, String e_date, String e_status, String e_etc,
			String k_name, String c_name, String p_name) {
		super();
		this.e_id = e_id;
		this.e_date = e_date;
		this.e_status = e_status;
		this.e_etc = e_etc;
		this.k_name = k_name;
		this.c_name = c_name;
		this.p_name = p_name;
	}

	public Enter(int e_id, String e_date, String e_status, String k_name,
			String c_name) {
		super();
		this.e_id = e_id;
		this.e_date = e_date;
		this.e_status = e_status;
		this.k_name = k_name;
		this.c_name = c_name;
	}

	public Enter(int e_id, String e_date, String e_status, String e_etc,
			int e_p_id, int e_o_id, int e_k_id, String k_name, String c_name,
			String p_name) {
		super();
		this.e_id = e_id;
		this.e_date = e_date;
		this.e_status = e_status;
		this.e_etc = e_etc;
		this.e_p_id = e_p_id;
		this.e_o_id = e_o_id;
		this.e_k_id = e_k_id;
		this.k_name = k_name;
		this.c_name = c_name;
		this.p_name = p_name;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Enter [e_id=").append(e_id).append(", e_date=")
				.append(e_date).append(", e_status=").append(e_status)
				.append(", e_etc=").append(e_etc).append(", e_p_id=")
				.append(e_p_id).append(", e_o_id=").append(e_o_id)
				.append(", e_k_id=").append(e_k_id).append(", k_name=")
				.append(k_name).append(", c_name=").append(c_name)
				.append(", p_name=").append(p_name).append("]");
		return builder.toString();
	}

	public int getE_id() {
		return e_id;
	}

	public void setE_id(int e_id) {
		this.e_id = e_id;
	}

	public String getE_date() {
		return e_date;
	}

	public void setE_date(String e_date) {
		this.e_date = e_date;
	}

	public String getE_status() {
		return e_status;
	}

	public void setE_status(String e_status) {
		this.e_status = e_status;
	}

	public String getE_etc() {
		return e_etc;
	}

	public void setE_etc(String e_etc) {
		this.e_etc = e_etc;
	}

	public int getE_p_id() {
		return e_p_id;
	}

	public void setE_p_id(int e_p_id) {
		this.e_p_id = e_p_id;
	}

	public int getE_o_id() {
		return e_o_id;
	}

	public void setE_o_id(int e_o_id) {
		this.e_o_id = e_o_id;
	}

	public int getE_k_id() {
		return e_k_id;
	}

	public void setE_k_id(int e_k_id) {
		this.e_k_id = e_k_id;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	
	
}
