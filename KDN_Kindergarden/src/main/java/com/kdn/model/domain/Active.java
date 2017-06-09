package com.kdn.model.domain;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Active implements Serializable {
	private int a_id;
    private String a_date;
    private String a_title;
    private String a_contents;
    private String a_etc;
    private int a_t_id;
    private int a_o_id;
    private List<ActiveFile> files;
    private MultipartFile[] fileup;
    
    public Active(){}

	public Active(int a_id, String a_title, int a_t_id, int a_o_id) {
		this.a_id = a_id;
		this.a_title = a_title;
		this.a_t_id = a_t_id;
		this.a_o_id = a_o_id;
	}
	
	public Active(int a_id, String a_date, String a_title, String a_contents,
			int a_t_id, int a_o_id) {
		this.a_id = a_id;
		this.a_date = a_date;
		this.a_title = a_title;
		this.a_contents = a_contents;
		this.a_t_id = a_t_id;
		this.a_o_id = a_o_id;
	}

	public Active(int a_id, String a_date, String a_title, String a_contents,
			String a_etc, int a_t_id, int a_o_id) {
		this.a_id = a_id;
		this.a_date = a_date;
		this.a_title = a_title;
		this.a_contents = a_contents;
		this.a_etc = a_etc;
		this.a_t_id = a_t_id;
		this.a_o_id = a_o_id;
	}

	public Active(int a_id, String a_date, String a_title, String a_contents,
			String a_etc, int a_t_id, int a_o_id, List<ActiveFile> files) {
		this.a_id = a_id;
		this.a_date = a_date;
		this.a_title = a_title;
		this.a_contents = a_contents;
		this.a_etc = a_etc;
		this.a_t_id = a_t_id;
		this.a_o_id = a_o_id;
		this.files = files;
	}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getA_title() {
		return a_title;
	}

	public void setA_title(String a_title) {
		this.a_title = a_title;
	}

	public String getA_contents() {
		return a_contents;
	}

	public void setA_contents(String a_contents) {
		this.a_contents = a_contents;
	}

	public String getA_etc() {
		return a_etc;
	}

	public void setA_etc(String a_etc) {
		this.a_etc = a_etc;
	}

	public int getA_t_id() {
		return a_t_id;
	}

	public void setA_t_id(int a_t_id) {
		this.a_t_id = a_t_id;
	}

	public int getA_o_id() {
		return a_o_id;
	}

	public void setA_o_id(int a_o_id) {
		this.a_o_id = a_o_id;
	}

	public List<ActiveFile> getFiles() {
		return files;
	}

	public void setFiles(List<ActiveFile> files) {
		this.files = files;
	}

	public MultipartFile[] getFileup() {
		return fileup;
	}

	public void setFileup(MultipartFile[] fileup) {
		this.fileup = fileup;
	}

	@Override
	public String toString() {
		return "Active [a_id=" + a_id + ", a_date=" + a_date + ", a_title="
				+ a_title + ", a_contents=" + a_contents + ", a_etc=" + a_etc
				+ ", a_t_id=" + a_t_id + ", a_o_id=" + a_o_id + ", files="
				+ files + ", fileup=" + Arrays.toString(fileup) + "]";
	}
}
