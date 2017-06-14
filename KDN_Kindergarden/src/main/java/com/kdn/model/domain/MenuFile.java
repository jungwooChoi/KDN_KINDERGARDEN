package com.kdn.model.domain;

import org.springframework.web.multipart.MultipartFile;

public class MenuFile 
{
	private int mf_id;
	private String mf_date;
	private String mf_category;
	private String mf_etc;
	private String mf_sfilename;
	private int mf_t_id;
	private MultipartFile fileup;
	
	public MenuFile() {
	}

	public MenuFile(int mf_id, String mf_date, String mf_category,
			String mf_etc, String mf_sfilename, int mf_t_id) {
		this.mf_id = mf_id;
		this.mf_date = mf_date;
		this.mf_category = mf_category;
		this.mf_etc = mf_etc;
		this.mf_sfilename = mf_sfilename;
		this.mf_t_id = mf_t_id;
	}

	public int getMf_id() {
		return mf_id;
	}

	public void setMf_id(int mf_id) {
		this.mf_id = mf_id;
	}

	public String getMf_date() {
		return mf_date;
	}

	public void setMf_date(String mf_date) {
		this.mf_date = mf_date;
	}

	public String getMf_category() {
		return mf_category;
	}

	public void setMf_category(String mf_category) {
		this.mf_category = mf_category;
	}

	public String getMf_etc() {
		return mf_etc;
	}

	public void setMf_etc(String mf_etc) {
		this.mf_etc = mf_etc;
	}

	public String getMf_sfilename() {
		return mf_sfilename;
	}

	public void setMf_sfilename(String mf_sfilename) {
		this.mf_sfilename = mf_sfilename;
	}

	public int getMf_t_id() {
		return mf_t_id;
	}

	public void setMf_t_id(int mf_t_id) {
		this.mf_t_id = mf_t_id;
	}
	
	public MultipartFile getFileup() {
		return fileup;
	}

	public void setFileup(MultipartFile fileup) {
		this.fileup = fileup;
	}

	@Override
	public String toString() {
		return "MenuFile [mf_id=" + mf_id + ", mf_date=" + mf_date
				+ ", mf_category=" + mf_category + ", mf_etc=" + mf_etc
				+ ", mf_rfilename="
				+ mf_sfilename + ", mf_t_id=" + mf_t_id + "]";
	}
	
	
}
