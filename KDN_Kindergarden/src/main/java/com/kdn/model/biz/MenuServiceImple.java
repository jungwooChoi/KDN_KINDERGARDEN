package com.kdn.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("menuService")
public class MenuServiceImple implements MenuService 
{
	@Autowired
	@Qualifier("menuDao")
	
	private MenuDao dao;

	@Override
	public void update(Menu menu) 
	{
		try {
			dao.update(menu);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("메뉴 수정 중 오류 발생");
		}
	}

	@Override
	public Menu search(int m_id) 
	{
		try {
			return dao.search(m_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("메뉴 검색 중 오류 발생");
		}
	}
	
	public void remove(int m_id)
	{
		try 
		{
			dao.remove(m_id);
		} 
		
		catch (Exception e) 
		{
			e.printStackTrace();
			throw new UpdateException("메뉴 삭제 중 오류 발생");
		}
	}
	
	public void add(Menu menu)
	{
		try 
		{ 
			dao.add(menu);
		} 
		
		catch (Exception e) 
		{
			e.printStackTrace();
			throw new UpdateException("메뉴 추가 중 오류 발생");
		}
	}
}
