package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Open;

public interface OpenService {
	public Open search(int o_t_id);
	public List<Open> thisYearSearch();
	public List<Open> searchAll(String date);
}
