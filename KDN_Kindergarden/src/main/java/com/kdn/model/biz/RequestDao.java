package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Request;

public interface RequestDao {
	public void 	add(Request request);
	public void 	update(Request request);
	public void 	remove(int no);
	public Request 	search(int no);
	public List<Request> searchAll(PageBean bean);
	public int 		getCount(PageBean bean);
	public int 		getRequestNo();
}
