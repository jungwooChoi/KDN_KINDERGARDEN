package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;

public interface MenuDao 
{
	/*public Menu search(String m_date, String m_category);*/
	public void update(Menu menu);
	public void 	add(Menu menu);
	public void remove(int m_id);
	public Menu search(int m_id);
}





