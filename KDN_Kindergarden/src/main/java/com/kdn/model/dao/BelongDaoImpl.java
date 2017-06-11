package com.kdn.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.BelongDao;
import com.kdn.model.domain.Belong;

@Repository("belongDao")
public class BelongDaoImpl implements BelongDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<Integer> searchAll(int b_o_id){
		// TODO Auto-generated method stub
		return session.selectList("belong.searchAll",  b_o_id);
	}
	
	public int getCount(int b_o_id){
		return session.selectOne("belong.getCount", b_o_id);
	}

}
