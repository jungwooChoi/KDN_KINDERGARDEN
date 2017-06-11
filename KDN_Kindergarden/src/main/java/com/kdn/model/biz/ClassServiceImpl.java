package com.kdn.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Class;
import com.kdn.model.domain.UpdateException;

@Service("classService")
public class ClassServiceImpl implements ClassService {
	@Autowired
	@Qualifier("classDao")
	private ClassDao dao;
	
	@Override
	public Class search(int c_id) {
		try {
			return dao.search(c_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

}
