package com.kdn.model.domain;

import java.io.Serializable;

public class ActiveFile implements Serializable{
	private int af_id;
	private String af_rfilename;
	private String af_sfilename;
	private int af_a_id;
	private String af_a_title;
	
	public ActiveFile(){}
	
	public ActiveFile(String af_rfilename, String af_sfilename) {
		this.af_rfilename = af_rfilename;
		this.af_sfilename = af_sfilename;
	}

	public ActiveFile(int af_id, String af_rfilename, String af_sfilename,
			int af_a_id, String af_a_title) {
		this.af_id = af_id;
		this.af_rfilename = af_rfilename;
		this.af_sfilename = af_sfilename;
		this.af_a_id = af_a_id;
		this.af_a_title = af_a_title;
	}

	public int getAf_id() {
		return af_id;
	}

	public void setAf_id(int af_id) {
		this.af_id = af_id;
	}

	public String getAf_rfilename() {
		return af_rfilename;
	}

	public void setAf_rfilename(String af_rfilename) {
		this.af_rfilename = af_rfilename;
	}

	public String getAf_sfilename() {
		return af_sfilename;
	}

	public void setAf_sfilename(String af_sfilename) {
		this.af_sfilename = af_sfilename;
	}

	public int getAf_a_id() {
		return af_a_id;
	}

	public void setAf_a_id(int af_a_id) {
		this.af_a_id = af_a_id;
	}

	public String getAf_a_title() {
		return af_a_title;
	}

	public void setAf_a_title(String af_a_title) {
		this.af_a_title = af_a_title;
	}

	@Override
	public String toString() {
		return "ActiveFile [af_id=" + af_id + ", af_rfilename=" + af_rfilename
				+ ", af_sfilename=" + af_sfilename + ", af_a_id=" + af_a_id
				+ "af_a_title" + af_a_title + "]";
	}
}
