package com.kdn.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Request;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("RequestService")
public class RequestServiceImpl implements RequestService {
	@Autowired
	@Qualifier("RequestDao")
	private RequestDao dao;
	@Override
	public void add(Request request) {
		try {
			int rno = dao.getRequestNo();
			request.setR_id(rno);
			dao.add(request);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 작성 중 오류 발생");
		}
	}

	@Override
	public void update(Request request) {
		try {
			dao.update(request);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		} 
	}

	@Override
	public void remove(int no) {
		try {
			dao.remove(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}
	}
	@Override
	public Request search(int no) {
		try {
			return dao.search(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}
	@Override
	public List<Request> searchAll(PageBean bean) {
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
