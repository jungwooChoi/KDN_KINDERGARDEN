package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.PageBeanGallery;

public interface ActiveService {
	public void add(Active active, String dir, int a_t_id);
	public Active search(int a_id);
	public void update(Active active);
	public void remove(int a_id);
	public List<Active> searchAll(PageBeanGallery bean);
	public List<ActiveFile> searchImg(PageBeanGallery bean);
}
