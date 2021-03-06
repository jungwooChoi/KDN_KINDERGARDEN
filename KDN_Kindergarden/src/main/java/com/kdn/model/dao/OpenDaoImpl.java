package com.kdn.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.OpenDao;
import com.kdn.model.domain.Open;

@Repository("openDao")
public class OpenDaoImpl implements OpenDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Open search(int o_t_id) {
		// TODO Auto-generated method stub
		return session.selectOne("open.search", o_t_id);
	}
	
	@Override
	public List<Open> searchAll(String date) {
		// TODO Auto-generated method stub
		return session.selectList("open.searchAll", date);
	}

	public List<Open> thisYearSearch() {
		return session.selectList("open.thisYearSearch");
	}
}
