package com.kdn.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.biz.TeacherDao;
import com.kdn.model.domain.Teacher;

@Repository("teacherDao")
public class TeacherDaoImpl implements TeacherDao {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public Teacher search(int id) {
		// TODO Auto-generated method stub
		return session.selectOne("teacher.search", id);
	}

	@Override
	public void update(Teacher teacher) {
		// TODO Auto-generated method stub
		session.update("teacher.update", teacher);
	}
	
	public List<Teacher> searchAll()
	{
		return session.selectList("teacher.searchAll");
	}

}
