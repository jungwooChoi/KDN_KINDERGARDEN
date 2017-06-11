package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Belong;

public interface BelongDao {
	public List<Integer> searchAll(int b_o_id);
	public int getCount(int b_o_id);
}





