package com.kdn.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Open;
import com.kdn.model.domain.UpdateException;

@Service("openService")
public class OpenServiceImpl implements OpenService {
	@Autowired
	@Qualifier("openDao")
	private OpenDao dao;
	
	@Override
	public Open search(int o_t_id) {
		try {
			return dao.search(o_t_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

}
