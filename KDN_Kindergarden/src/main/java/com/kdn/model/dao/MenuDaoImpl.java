package com.kdn.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.MenuDao;
import com.kdn.model.domain.Menu;

@Repository("menuDao")
public class MenuDaoImpl implements MenuDao 
{
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public Menu search(String m_date, String m_category) 
	{
		return null;
	}

	@Override
	public void update(Menu menu) 
	{
		
	}

	@Override
	public void add(Menu menu) 
	{

	}

	@Override
	public void remove(int m_id) 
	{

	}

}
