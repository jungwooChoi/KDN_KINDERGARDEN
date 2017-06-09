package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;

public interface MenuDao 
{
	public Menu search(int m_date);
	public void update(Menu menu);
	public void 	add(Menu menu);
	public void remove(int m_id);
	
}





