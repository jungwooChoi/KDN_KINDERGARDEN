package com.kdn.model.biz;

import com.kdn.model.domain.Menu;

public interface MenuService 
{
	public void update(Menu menu);
	public Menu search(int m_id);
}
