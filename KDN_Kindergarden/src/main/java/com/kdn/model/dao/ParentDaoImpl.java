package com.kdn.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.ParentDao;
import com.kdn.model.domain.Parent;

@Repository("parentDao")
public class ParentDaoImpl implements ParentDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Parent search(int k_p_id) {
		// TODO Auto-generated method stub
		return session.selectOne("parent.search", k_p_id);
	}

}
