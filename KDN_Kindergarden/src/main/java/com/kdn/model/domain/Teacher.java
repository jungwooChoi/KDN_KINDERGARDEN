package com.kdn.model.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Teacher implements Serializable{
	private int t_id;
	private String t_name;
    private String t_pw;
    private String t_gradu;
    private String t_birth;
    private String t_phone;
    private String t_address;
    private String t_img;
    private String t_status;
    private MultipartFile t_uploadimg;
	
    public Teacher(){
    	
    }
    
    public Teacher(int t_id, String t_name, String t_pw, String t_gradu,
			String t_birth, String t_phone, String t_address, String t_img) {
		this.t_id = t_id;
		this.t_name = t_name;
		this.t_pw = t_pw;
		this.t_gradu = t_gradu;
		this.t_birth = t_birth;
		this.t_phone = t_phone;
		this.t_address = t_address;
		this.t_img = t_img;
	}


	public Teacher(int t_id, String t_name, String t_pw, String t_gradu,
			String t_birth, String t_phone, String t_address, String t_img,
			String t_status) {
		this.t_id = t_id;
		this.t_name = t_name;
		this.t_pw = t_pw;
		this.t_gradu = t_gradu;
		this.t_birth = t_birth;
		this.t_phone = t_phone;
		this.t_address = t_address;
		this.t_img = t_img;
		this.t_status = t_status;
	}

	public int getT_id() {
		return t_id;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	public String getT_pw() {
		return t_pw;
	}

	public void setT_pw(String t_pw) {
		this.t_pw = t_pw;
	}

	public String getT_gradu() {
		return t_gradu;
	}

	public void setT_gradu(String t_gradu) {
		this.t_gradu = t_gradu;
	}

	public String getT_birth() {
		return t_birth;
	}

	public void setT_birth(String t_birth) {
		this.t_birth = t_birth;
	}

	public String getT_phone() {
		return t_phone;
	}

	public void setT_phone(String t_phone) {
		this.t_phone = t_phone;
	}

	public String getT_address() {
		return t_address;
	}

	public void setT_address(String t_address) {
		this.t_address = t_address;
	}

	public String getT_img() {
		return t_img;
	}

	public void setT_img(String t_img) {
		this.t_img = t_img;
	}

	public String getT_status() {
		return t_status;
	}

	public void setT_status(String t_status) {
		this.t_status = t_status;
	}

	public MultipartFile getT_uploadimg() {
		return t_uploadimg;
	}

	public void setT_uploadimg(MultipartFile t_uploadimg) {
		this.t_uploadimg = t_uploadimg;
	}

	@Override
	public String toString() {
		return "t_id=" + t_id + ", t_name=" + t_name + ", t_pw="
				+ t_pw + ", t_gradu=" + t_gradu + ", t_birth=" + t_birth
				+ ", t_phone=" + t_phone + ", t_address=" + t_address
				+ ", t_img=" + t_img + ", t_status=" + t_status ;
	}
    
	
}
