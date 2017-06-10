package com.kdn.model.domain;

import java.io.Serializable;

public class Request implements Serializable {
	int r_id;
	String r_status;
    String r_date;
    String r_edate;
    String r_title;
    String r_contents;
    int r_p_id;
    int r_t_id;
    int r_k_id;
    
	public Request() {
		
	}	

	public Request(int r_id, String r_status, String r_date, String r_edate,
			String r_title, String r_contents, int r_p_id, int r_t_id,
			int r_k_id) {
		this.r_id = r_id;
		this.r_status = r_status;
		this.r_date = r_date;
		this.r_edate = r_edate;
		this.r_title = r_title;
		this.r_contents = r_contents;
		this.r_p_id = r_p_id;
		this.r_t_id = r_t_id;
		this.r_k_id = r_k_id;
	}



	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getR_status() {
		return r_status;
	}

	public void setR_status(String r_status) {
		this.r_status = r_status;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getR_edate() {
		return r_edate;
	}

	public void setR_edate(String r_edate) {
		this.r_edate = r_edate;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public int getR_p_id() {
		return r_p_id;
	}

	public void setR_p_id(int r_p_id) {
		this.r_p_id = r_p_id;
	}

	public int getR_t_id() {
		return r_t_id;
	}

	public void setR_t_id(int r_t_id) {
		this.r_t_id = r_t_id;
	}

	public int getR_k_id() {
		return r_k_id;
	}

	public void setR_k_id(int r_k_id) {
		this.r_k_id = r_k_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Request [r_id=").append(r_id).append(", r_status=")
				.append(r_status).append(", r_date=").append(r_date)
				.append(", r_edate=").append(r_edate).append(", r_title=")
				.append(r_title).append(", r_contents=").append(r_contents)
				.append(", r_p_id=").append(r_p_id).append(", r_t_id=")
				.append(r_t_id).append(", r_k_id=").append(r_k_id).append("]");
		return builder.toString();
	} 
    
}
