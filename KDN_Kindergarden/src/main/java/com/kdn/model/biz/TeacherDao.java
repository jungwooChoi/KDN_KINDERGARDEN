package com.kdn.model.biz;

import com.kdn.model.domain.Teacher;

public interface TeacherDao {
	public Teacher search(int id);
	public void update(Teacher teacher);
}
