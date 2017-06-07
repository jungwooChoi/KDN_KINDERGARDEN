package com.kdn.model.biz;

import com.kdn.model.domain.Teacher;

public interface TeacherService {
	public void update(Teacher teacher);
	public Teacher search(int id);
	public boolean login(int id, String password);
}
