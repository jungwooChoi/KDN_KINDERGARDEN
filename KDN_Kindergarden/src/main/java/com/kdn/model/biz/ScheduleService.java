package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Schedule;

public interface ScheduleService {
	public void update(Schedule schedule);

	public void remove(String date);

	public Schedule search(int no);
	
	public Schedule searchDate(String date);

	public void add(Schedule schedule);

	public List<Schedule> searchAll(PageBean bean);

	public Schedule searchSch(int no);
	

	public List<Schedule> searchMonth(String date);

	public List<Schedule> searchNow();

}
