package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Teacher;

public interface TeacherDao {
	public Teacher search(int id);
	public void update(Teacher teacher);
	public List<Teacher> searchAll();
}
