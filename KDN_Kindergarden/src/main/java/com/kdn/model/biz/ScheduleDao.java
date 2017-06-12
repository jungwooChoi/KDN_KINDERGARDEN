package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Schedule;

public interface ScheduleDao {
	public void add(Schedule schedule);

	public void update(Schedule schedule);

	public void remove(String date);

	public Schedule search(int no);
	
	public Schedule searchDate(String date);

	public List<Schedule> searchAll(PageBean bean);

	public int getCount(PageBean bean);
	
	public int getScheduleNo();

	public Schedule searchSch(int no);

	public List<Schedule> searchMonth(String date);
}
