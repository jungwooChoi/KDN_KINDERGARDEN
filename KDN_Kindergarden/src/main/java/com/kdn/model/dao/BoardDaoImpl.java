package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.BoardDao;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.PageBean;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void add(Board board) {
		session.insert("board.insert", board);
	}

	@Override
	public void update(Board board) {
		session.update("board.update", board);
	}

	@Override
	public void remove(int no) {
		session.delete("board.delete", no);
	}

	@Override
	public Board search(int no) {
		return session.selectOne("board.search",no);
	}

	@Override
	public List<Board> searchAll(PageBean bean) {
		/*
		 * RowBounds(offset, limit)
		 * offset 추출할 row의 시작 위치
		 * limit 추출할 개수
		 */
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("board.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBean bean) {
		return session.selectOne("board.getCount", bean);
	}

	@Override
	public int getBoardNo() {
		return session.selectOne("board.getBoardNo");
	}

}
