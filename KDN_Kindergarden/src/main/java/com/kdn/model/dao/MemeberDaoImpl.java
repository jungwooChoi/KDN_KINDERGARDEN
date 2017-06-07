package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.MemberDao;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

@Repository("memberDao")
public class MemeberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public Member search(String id) {
		// TODO Auto-generated method stub
		return session.selectOne("member.search", id);
	}

	@Override
	public List<Member> searchAll(PageBean bean) {
		// TODO Auto-generated method stub
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("member.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBean bean) {
		// TODO Auto-generated method stub
		return session.selectOne("member.getCount", bean);
	}

	@Override
	public void update(Member member) {
		// TODO Auto-generated method stub
		session.update("member.update", member);
	}

}
