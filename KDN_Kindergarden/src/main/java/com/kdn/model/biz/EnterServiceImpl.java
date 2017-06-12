package com.kdn.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Enter;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("enterService")
public class EnterServiceImpl implements EnterService {
	@Autowired
	@Qualifier("enterDao")
	private EnterDao dao;
	
	@Override
	public void add(Enter enter) {
		// TODO Auto-generated method stub
		System.out.println(enter);
		try {
			int eno = dao.getEnterNo();
			enter.setE_id(eno);
			dao.add(enter);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 작성 중 오류 발생");
		}
	}

	@Override
	public void update(Enter enter) {
		// TODO Auto-generated method stub
		try {
			dao.update(enter);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		} 
	}

	@Override
	public void remove(int no) {
		// TODO Auto-generated method stub
		try {
			dao.remove(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}
	}

	@Override
	public Enter search(int no) {
		// TODO Auto-generated method stub
		try {
			return dao.search(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public List<Enter> searchAll(PageBean bean) {
		try {
			int total = dao.getCount(bean);
			PageUtility bar = 
			  new PageUtility(bean.getInterval()
					  		, total
					  		, bean.getPageNo()
					  		, "images/");
			bean.setPagelink(bar.getPageBar());
			
			return dao.searchAll(bean);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

}
