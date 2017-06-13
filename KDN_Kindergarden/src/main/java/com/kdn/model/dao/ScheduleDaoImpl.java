package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kdn.model.biz.ScheduleDao;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Schedule;

@Repository("scheduleDao")
public class ScheduleDaoImpl implements ScheduleDao {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void add(Schedule schedule) {
		session.insert("schedule.insert", schedule);

	}

	@Override
	public void update(Schedule schedule) {
		session.update("schedule.update", schedule);

	}

	@Override
	public void remove(String date) {
		session.delete("schedule.delete", date);

	}

	@Override
	public Schedule search(int no) {
		return session.selectOne("schedule.search", no);
	}

	@Override
	public List<Schedule> searchAll(PageBean bean) {
		RowBounds rows = new RowBounds(bean.getStart() - 1, bean.getInterval());
		return session.selectList("schedule.searchAll", bean, rows);
	}

	@Override
	public int getCount(PageBean bean) {
		return session.selectOne("schedule.getCount", bean);
	}

	@Override
	public int getScheduleNo() {
		return session.selectOne("schedule.getScheduleNo");
	}

	@Override
	public Schedule searchDate(String date) {
		return session.selectOne("schedule.searchDate", date);
	}

	@Override
	public Schedule searchSch(int no) {
		return session.selectOne("schedule.searchSch", no);
	}

	@Override

	public List<Schedule> searchMonth(String date) {
		return session.selectList("schedule.searchMonth", date);
		
	}
	public Schedule searchNow() {
		return session.selectOne("schedule.searchNow");

	}

}
