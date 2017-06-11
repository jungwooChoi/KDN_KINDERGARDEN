package com.kdn.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.Belong;
import com.kdn.model.domain.UpdateException;

@Service("belongService")
public class BelongServiceImpl implements BelongService {
	@Autowired
	@Qualifier("belongDao")
	private BelongDao dao;
	
	@Override
	public List<Integer> searchAll(int b_o_id){
		try {
			return dao.searchAll(b_o_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	public int getCount(int b_o_id){
		try {
			return dao.getCount(b_o_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 count 중 오류 발생");
		}
	}
}
