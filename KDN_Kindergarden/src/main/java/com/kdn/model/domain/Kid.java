package com.kdn.model.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Kid implements Serializable{
	private int    k_id;
	private String k_name;
	private String k_birth;
	private String k_sex;
	private String k_img;
	private String k_contents;
	private int    k_p_id;
	private String k_date;
	
	private MultipartFile k_uploadimg;  //파일정보
	
	public Kid() {}
	
	public Kid(int k_id, String k_name, String k_birth, String k_sex, String k_img,
		String k_contents, int k_p_id) {
		this.k_id = k_id;
		this.k_name = k_name;
		this.k_birth = k_birth;
		this.k_sex = k_sex;
		this.k_img = k_img;
		this.k_contents = k_contents;
		this.k_p_id = k_p_id;
	}
	
	public Kid(String k_name, String k_birth, String k_sex, String k_img,
			String k_contents, int k_p_id) {
			this.k_name = k_name;
			this.k_birth = k_birth;
			this.k_sex = k_sex;
			this.k_img = k_img;
			this.k_contents = k_contents;
			this.k_p_id = k_p_id;
		}

	public Kid(int k_id, String k_name, String k_birth, String k_sex,
			String k_img, String k_contents, int k_p_id, String k_date) {
		this.k_id = k_id;
		this.k_name = k_name;
		this.k_birth = k_birth;
		this.k_sex = k_sex;
		this.k_img = k_img;
		this.k_contents = k_contents;
		this.k_p_id = k_p_id;
		this.k_date = k_date;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Kid [k_id=").append(k_id).append(", k_name=")
				.append(k_name).append(", k_birth=").append(k_birth)
				.append(", k_sex=").append(k_sex).append(", k_img=")
				.append(k_img).append(", k_contents=").append(k_contents)
				.append(", k_p_id=").append(k_p_id).append(", k_uploadimg=")
				.append(", k_date=").append(k_date)
				.append("]");
		return builder.toString();
	}

	public int getK_id() {
		return k_id;
	}

	public void setK_id(int k_id) {
		this.k_id = k_id;
	}

	public String getK_name() {
		return k_name;
	}

	public void setK_name(String k_name) {
		this.k_name = k_name;
	}

	public String getK_birth() {
		return k_birth;
	}

	public void setK_birth(String k_birth) {
		this.k_birth = k_birth;
	}

	public String getK_sex() {
		return k_sex;
	}

	public void setK_sex(String k_sex) {
		this.k_sex = k_sex;
	}

	public String getK_img() {
		return k_img;
	}

	public void setK_img(String k_img) {
		this.k_img = k_img;
	}

	public String getK_contents() {
		return k_contents;
	}

	public void setK_contents(String k_contents) {
		this.k_contents = k_contents;
	}

	public int getK_p_id() {
		return k_p_id;
	}

	public void setK_p_id(int k_p_id) {
		this.k_p_id = k_p_id;
	}

	
	public String getK_date() {
		return k_date;
	}

	public void setK_date(String k_date) {
		this.k_date = k_date;
	}

	public MultipartFile getK_uploadimg() {
		return k_uploadimg;
	}

	public void setK_uploadimg(MultipartFile k_uploadimg) {
		this.k_uploadimg = k_uploadimg;
	}


	
}
