package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.EnterDao;
import com.kdn.model.domain.Enter;
import com.kdn.model.domain.PageBean;

@Repository("enterDao")
public class EnterDaoImpl implements EnterDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void add(Enter enter) {
		// TODO Auto-generated method stub
		session.insert("enter.insert", enter);
	}

	@Override
	public void update(Enter enter) {
		// TODO Auto-generated method stub
		session.update("enter.update", enter);
	}

	@Override
	public void remove(int no) {
		// TODO Auto-generated method stub
		session.delete("enter.delete", no);
	}

	@Override
	public Enter search(int no) {
		return session.selectOne("enter.search",no);
	}

	@Override
	public List<Enter> searchAll(PageBean bean) {
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("enter.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBean bean) {
		// TODO Auto-generated method stub
		return session.selectOne("enter.getCount", bean);
	}

	@Override
	public int getEnterNo() {
		// TODO Auto-generated method stub
		return session.selectOne("enter.getEnterNo");
	}

}
