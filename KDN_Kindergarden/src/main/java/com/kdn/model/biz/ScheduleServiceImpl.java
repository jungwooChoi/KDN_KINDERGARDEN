package com.kdn.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Schedule;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	@Qualifier("scheduleDao")
	private ScheduleDao dao;
	@Override
	public void update(Schedule schedule) {
		try {
			dao.update(schedule);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		} 

	}

	@Override
	public void remove(String date) {
		try {
			dao.remove(date);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}
	}

	@Override
	public Schedule search(int no) {
		try {
			return dao.search(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public void add(Schedule schedule) {
		try {
			System.out.println(schedule);
			int sdno = dao.getScheduleNo();
			schedule.setS_id(sdno);
			dao.add(schedule);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 작성 중 오류 발생");
		}

	}

	@Override
	public List<Schedule> searchAll(PageBean bean) {
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

	@Override
	public Schedule searchDate(String date) {
		try {
			System.out.println(date);
			return dao.searchDate(date);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public Schedule searchSch(int no) {
		try {
			return dao.searchSch(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override

	public List<Schedule> searchMonth(String date) {
		try {
			return dao.searchMonth(date);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	public Schedule searchNow() {
		// TODO Auto-generated method stub
		try {
			return dao.searchNow();

		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

}
