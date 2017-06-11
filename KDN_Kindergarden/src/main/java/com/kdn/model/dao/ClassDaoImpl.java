package com.kdn.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.ClassDao;
import com.kdn.model.domain.Class;

@Repository("classDao")
public class ClassDaoImpl implements ClassDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Class search(int c_id) {
		// TODO Auto-generated method stub
		return session.selectOne("class.search", c_id);
	}

}
