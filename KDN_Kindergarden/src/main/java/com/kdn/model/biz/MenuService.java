package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Menu;

public interface MenuService 
{
	public void update(Menu menu);
	public void add(Menu menu);
	public Menu search(int m_id);
	public void remove(int m_id);
	public List<Menu> search();
}
