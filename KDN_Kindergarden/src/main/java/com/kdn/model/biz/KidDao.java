package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Kid;
import com.kdn.model.domain.PageBean;

public interface KidDao {
	public void 	add(Kid kid);
	public void 	update(Kid kid);
	public void 	remove(int no);
	public Kid 	search(int no);
	public List<Kid> searchAll(PageBean bean);
	public int 		getCount(PageBean bean);
	public int 		getKidNo();
}





