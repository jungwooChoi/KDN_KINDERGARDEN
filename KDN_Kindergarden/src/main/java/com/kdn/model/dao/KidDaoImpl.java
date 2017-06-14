package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.KidDao;
import com.kdn.model.domain.Kid;
import com.kdn.model.domain.PageBean;

@Repository("kidDao")
public class KidDaoImpl implements KidDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void add(Kid kid) {
		// TODO Auto-generated method stub
		session.insert("kid.insert", kid);
	}

	@Override
	public void update(Kid kid) {
		// TODO Auto-generated method stub
		session.update("kid.update", kid);
	}

	@Override
	public void remove(int no) {
		// TODO Auto-generated method stub
		session.delete("kid.delete", no);
	}

	@Override
	public Kid search(int no) {
		// TODO Auto-generated method stub
		return session.selectOne("kid.search",no);
	}

	@Override
	public List<Kid> searchAll(PageBean bean) {
		// TODO Auto-generated method stub
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("kid.searchAll",bean, rows );
	}
	
	@Override
	public List<Kid> searchMyKid(int k_p_id) {
		// TODO Auto-generated method stub
		return session.selectList("kid.searchMyKid", k_p_id);
	}

	@Override
	public int getCount(PageBean bean) {
		// TODO Auto-generated method stub
		return session.selectOne("kid.getCount", bean);
	}

	@Override
	public int getKidNo() {
		// TODO Auto-generated method stub
		return session.selectOne("kid.getKidNo");
	}

}
