package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.MenuFileDao;
import com.kdn.model.domain.MenuFile;
import com.kdn.model.domain.PageBeanGallery;

@Repository("menufileDao")
public class MenuFileDaoImpl implements MenuFileDao {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void add(MenuFile menufile) {
		// TODO Auto-generated method stub
		session.insert("menufile.insert", menufile);
	}

	@Override
	public void remove(int a_id) {
		// TODO Auto-generated method stub
		session.delete("menufile.delete", a_id);
	}

	@Override
	public MenuFile search(int a_id) {
		// TODO Auto-generated method stub
		return session.selectOne("menufile.search", a_id);
	}

	@Override
	public List<MenuFile> searchAll(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		RowBounds rows = new RowBounds(bean.getStart()-1, bean.getInterval());
		return session.selectList("menufile.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		return session.selectOne("menufile.getCount", bean);
	}

}
