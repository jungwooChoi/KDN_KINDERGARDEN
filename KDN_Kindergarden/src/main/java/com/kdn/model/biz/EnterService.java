package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Enter;
import com.kdn.model.domain.PageBean;

public interface EnterService {
	public void 	add(Enter enter);
	public void 	update(Enter enter);
	public void 	remove(int no);
	public Enter 	search(int no);
	public List<Enter> searchAll(PageBean bean);
}