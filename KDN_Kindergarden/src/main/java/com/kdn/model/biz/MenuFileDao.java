package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.MenuFile;
import com.kdn.model.domain.PageBeanGallery;

public interface MenuFileDao {
	public void add(MenuFile menufile);
	public void remove(int a_id);
	public MenuFile search(int a_id);
	public List<MenuFile> searchAll(PageBeanGallery bean);
	public int getCount(PageBeanGallery bean);
}
