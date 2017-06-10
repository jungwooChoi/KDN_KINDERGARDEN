package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.RequestDao;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Request;

@Repository("RequestDao")
public class RequestDaoImpl implements RequestDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void add(Request request) {
		session.insert("request.insert", request);
	}

	@Override
	public void update(Request request) {
		session.update("request.update", request);
	}

	@Override
	public void remove(int no) {
		session.delete("request.delete", no);
	}

	@Override
	public Request search(int no) {
		return session.selectOne("request.search",no);
	}

	@Override
	public List<Request> searchAll(PageBean bean) {
		/*
		 * RowBounds(offset, limit)
		 * offset 추출할 row의 시작 위치
		 * limit 추출할 개수
		 */
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("request.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBean bean) {
		return session.selectOne("request.getCount", bean);
	}

	@Override
	public int getRequestNo() {
		return session.selectOne("request.getRequestNo");
	}

}
