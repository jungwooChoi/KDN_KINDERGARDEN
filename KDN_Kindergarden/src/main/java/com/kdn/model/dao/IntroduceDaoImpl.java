package com.kdn.model.dao;

import java.util.List;



import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.BoardDao;
import com.kdn.model.biz.IntroduceDao;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Introduce;
import com.kdn.model.domain.Menu;
import com.kdn.model.domain.PageBean;

@Repository("introduceDao")
public class IntroduceDaoImpl implements IntroduceDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<Introduce> search() {
		// TODO Auto-generated method stub
		/*return session.selectList("menu.week");*/
		return session.selectList("introduce.search");
	}

}
