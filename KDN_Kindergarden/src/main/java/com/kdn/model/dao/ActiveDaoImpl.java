package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.ActiveDao;
import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.PageBeanGallery;

@Repository("activeDao")
public class ActiveDaoImpl implements ActiveDao {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void add(Active active) {
		// TODO Auto-generated method stub
		session.insert("active.insert", active);
	}

	@Override
	public void update(Active active) {
		// TODO Auto-generated method stub
		session.update("active.update", active);
	}

	@Override
	public void remove(int a_id) {
		// TODO Auto-generated method stub
		session.delete("active.delete", a_id);
	}

	@Override
	public Active search(int a_id) {
		// TODO Auto-generated method stub
		return session.selectOne("active.search", a_id);
	}

	@Override
	public List<Active> searchAll(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("active.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		return session.selectOne("active.getCount", bean);
	}

	@Override
	public int getBoardNo() {
		// TODO Auto-generated method stub
		return session.selectOne("active.getBoardNo");
	}

	@Override
	public void addFiles(List<ActiveFile> files, int af_a_id) {
		// TODO Auto-generated method stub
		for (ActiveFile activeFile : files) {
			activeFile.setAf_a_id(af_a_id);
			session.insert("active.insertFile", activeFile);
		}
	}

	@Override
	public void removeFiles(int af_a_id) {
		// TODO Auto-generated method stub
		session.delete("active.delete", af_a_id);
	}

	@Override
	public List<ActiveFile> searchImg(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("active.searchImg", bean, rows);
	}

}
