package com.kdn.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Parent;
import com.kdn.model.domain.UpdateException;

@Service("parentService")
public class ParentServiceImpl implements ParentService {
	@Autowired
	@Qualifier("parentDao")
	private ParentDao dao;
	
	@Override
	public Parent search(int k_p_id) {
		// TODO Auto-generated method stub
		try {
			return dao.search(k_p_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

}
