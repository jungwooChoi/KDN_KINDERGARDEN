package com.kdn.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Menu;
import com.kdn.model.domain.UpdateException;

@Service("menuService")
public class MenuServiceImple implements MenuService 
{
	@Autowired
	@Qualifier("menuDao")
	
	private MenuService dao;

	@Override
	public void update(Menu menu) 
	{
		try {
			dao.update(menu);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		}
	}

	@Override
	public Menu search(int m_id) 
	{
		try {
			return dao.search(m_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("선생님 검색 중 오류 발생");
		}
	}

}
