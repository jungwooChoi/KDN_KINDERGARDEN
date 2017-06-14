package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.MenuFile;
import com.kdn.model.domain.PageBeanGallery;

public interface MenuFileService {
	public void add(MenuFile menufile, String dir, int mf_t_id);
	public MenuFile search(int mf_id);
	public void remove(int mf_id);
	public List<MenuFile> searchAll(PageBeanGallery bean);
}
