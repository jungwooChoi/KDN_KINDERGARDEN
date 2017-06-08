package com.kdn.model.domain;

import java.io.Serializable;

public class Board implements Serializable{
	private int b_id;
	private String b_date;
	private String b_title;
	private String b_contents;
	private String b_etc;
	private String b_t_id;
	
	public Board() {}
		
	public Board(int b_id, String b_title) {
		super();
		this.b_id = b_id;
		this.b_title = b_title;
	}
		
	public Board(int b_id, String b_date, String b_title, String b_contents,
			String b_etc) {
		super();
		this.b_id = b_id;
		this.b_date = b_date;
		this.b_title = b_title;
		this.b_contents = b_contents;
		this.b_etc = b_etc;
	}

	public Board(int b_id, String b_date, String b_title, String b_contents,
			String b_etc, String b_t_id) {
		super();
		this.b_id = b_id;
		this.b_date = b_date;
		this.b_title = b_title;
		this.b_contents = b_contents;
		this.b_etc = b_etc;
		this.b_t_id = b_t_id;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_contents() {
		return b_contents;
	}

	public void setB_contents(String b_contents) {
		this.b_contents = b_contents;
	}

	public String getB_etc() {
		return b_etc;
	}

	public void setB_etc(String b_etc) {
		this.b_etc = b_etc;
	}

	public String getb_t_id() {
		return b_t_id;
	}

	public void setb_t_id(String b_t_id) {
		this.b_t_id = b_t_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Board [b_id=").append(b_id).append(", b_date=")
				.append(b_date).append(", b_title=").append(b_title)
				.append(", b_contents=").append(b_contents).append(", b_etc=")
				.append(b_etc).append(", b_t_id=").append(b_t_id).append("]");
		return builder.toString();
	}
	
	
	
}
