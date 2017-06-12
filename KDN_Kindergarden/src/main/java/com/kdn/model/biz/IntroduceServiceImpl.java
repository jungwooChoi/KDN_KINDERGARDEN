package com.kdn.model.biz;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Introduce;
import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Teacher;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("introduceService")
public class IntroduceServiceImpl implements IntroduceService
{
	@Autowired
	@Qualifier("introduceDao")
	
	private IntroduceDao dao;
		
	@Override
	public List<Introduce> search() 
	{
		try 
		{
			return dao.search();
		} 
		
		catch (Exception e) 
		{
			e.printStackTrace();
			throw new UpdateException("교사 검색 중 오류 발생");
		}
	}

}
