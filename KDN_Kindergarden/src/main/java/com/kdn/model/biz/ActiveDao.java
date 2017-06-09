package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.PageBeanGallery;

public interface ActiveDao {
	public void add(Active active);
	public void update(Active active);
	public void remove(int a_id);
	public Active search(int a_id);
	public List<Active> searchAll(PageBeanGallery bean);
	public int getCount(PageBeanGallery bean);
	public int getBoardNo();
	public void addFiles(List<ActiveFile> files, int af_a_id);
	public void removeFiles(int af_a_id);
	public List<ActiveFile> searchImg(PageBeanGallery bean);
}
