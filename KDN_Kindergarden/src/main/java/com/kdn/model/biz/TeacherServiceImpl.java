package com.kdn.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Teacher;
import com.kdn.model.domain.UpdateException;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	@Qualifier("teacherDao")
	private TeacherDao dao;
	public void update(Teacher teacher) {
		// TODO Auto-generated method stub
		try {
			dao.update(teacher);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		}
	}

	@Override
	public Teacher search(int id) {
		try {
			return dao.search(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("선생님 검색 중 오류 발생");
		}
	}

	@Override
	public boolean login(int id, String password) {
		Teacher teacher = null;
			try {
				teacher = dao.search(id);
			} catch(Exception  s){
				s.printStackTrace();
				throw new UpdateException("DB 서버 오류");
			}
			
			if(teacher == null){
				throw new UpdateException("해당하는 아이디는 존재하지 않습니다.");
			}
			if(password ==null || !password.equals(teacher.getT_pw())){
				throw new UpdateException("비밀번호가 맞지 않습니다.");
			}

			return true;
		}
}

