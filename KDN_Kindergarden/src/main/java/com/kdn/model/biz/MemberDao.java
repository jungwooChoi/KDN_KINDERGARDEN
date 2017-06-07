package com.kdn.model.biz;

import java.util.List;

import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

public interface MemberDao {
	public Member search(String id);
	public List<Member> searchAll(PageBean bean);
	public int getCount(PageBean bean);
	public void update(Member member);
}
