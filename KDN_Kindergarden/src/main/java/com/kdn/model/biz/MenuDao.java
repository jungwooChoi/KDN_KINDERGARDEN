package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Menu;

public interface MenuDao 
{
	/*public Menu search(String m_date, String m_category);*/
	public void update(Menu menu);
	public void 	add(Menu menu);
	public void remove(int m_id);
	public Menu search(int m_id);
	public List<Menu> search();
	public int isHasMenu(Menu menu);
	public List<Menu> searchCategoryOne();
	public List<Menu> searchCategoryTwo();
	public List<Menu> searchCategoryThree();
	public List<Menu> searchCategoryFour();
	
}





