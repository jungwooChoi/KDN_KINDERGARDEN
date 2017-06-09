package com.kdn.model.domain;

import java.io.Serializable;

public class Schedule implements Serializable {
	private int s_id;
    private String s_date;
    private String s_title;
    private String s_contents;
    private String s_etc;
    private int s_t_id;
    private int s_o_id;
	
    public Schedule() {
		
	}

	public Schedule(int s_id, String s_date, String s_title, String s_contents,
			String s_etc, int s_t_id, int s_o_id) {
		this.s_id = s_id;
		this.s_date = s_date;
		this.s_title = s_title;
		this.s_contents = s_contents;
		this.s_etc = s_etc;
		this.s_t_id = s_t_id;
		this.s_o_id = s_o_id;
	}

	public Schedule(int s_id, String s_date, String s_title, String s_contents,
			String s_etc) {
		super();
		this.s_id = s_id;
		this.s_date = s_date;
		this.s_title = s_title;
		this.s_contents = s_contents;
		this.s_etc = s_etc;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getS_title() {
		return s_title;
	}

	public void setS_title(String s_title) {
		this.s_title = s_title;
	}

	public String getS_contents() {
		return s_contents;
	}

	public void setS_contents(String s_contents) {
		this.s_contents = s_contents;
	}

	public String getS_etc() {
		return s_etc;
	}

	public void setS_etc(String s_etc) {
		this.s_etc = s_etc;
	}

	public int getS_t_id() {
		return s_t_id;
	}

	public void setS_t_id(int s_t_id) {
		this.s_t_id = s_t_id;
	}

	public int getS_o_id() {
		return s_o_id;
	}

	public void setS_o_id(int s_o_id) {
		this.s_o_id = s_o_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("s_id=").append(s_id).append(", s_date=")
				.append(s_date).append(", s_title=").append(s_title)
				.append(", s_contents=").append(s_contents).append(", s_etc=")
				.append(s_etc).append(", s_t_id=").append(s_t_id)
				.append(", s_o_id=").append(s_o_id);
		return builder.toString();
	}
    
	
    
	
}
