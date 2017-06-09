package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Kid;
import com.kdn.model.domain.PageBean;

public interface KidService {
	public void update(Kid kid);
	public void remove(int no);
	public Kid search(int no);
	public void add(Kid kid, String dir);
	public List<Kid> searchAll(PageBean bean);

}