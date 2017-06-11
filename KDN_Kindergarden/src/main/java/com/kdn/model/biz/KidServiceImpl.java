package com.kdn.model.biz;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kdn.model.domain.Kid;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("kidService")
public class KidServiceImpl implements KidService {

	@Autowired
	@Qualifier("kidDao")
	private KidDao dao;
	
	@Override
	public void update(Kid kid, String dir) {
		// TODO Auto-generated method stub
		String fileName=null;
		try {
			MultipartFile fileinfo=kid.getK_uploadimg();
			if(fileinfo!=null){
				String k_img=String.format("%d%s", System.currentTimeMillis(),fileinfo.getOriginalFilename());
				fileName=String.format("%s/%s", dir, k_img);
				kid.setK_img(k_img);
				File file=new File(fileName);
				fileinfo.transferTo(file);
			}
			dao.update(kid);
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
	public Kid search(int no) {
		// TODO Auto-generated method stub
		try {
			return dao.search(no);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public void add(Kid kid, String dir) {
		// TODO Auto-generated method stub
		String fileName=null;
		try {
			int kno=dao.getKidNo();
			kid.setK_id(kno);
			MultipartFile fileinfo=kid.getK_uploadimg();
			if(fileinfo!=null){
				String k_img=String.format("%d%s", System.currentTimeMillis(),fileinfo.getOriginalFilename());
				fileName=String.format("%s/%s", dir, k_img);
				kid.setK_img(k_img);
				File file=new File(fileName);
				fileinfo.transferTo(file);
//				kid.setK_uploadimg(fileinfo);
				
//			int kno=dao.getKidNo();
//			kid.setK_id(kno);
//			
//			MultipartFile fileinfo=kid.getK_uploadimg();
//			if(fileinfo!=null){
//				String k_img=fileinfo.getOriginalFilename();
//				String k_uploadimg=String.format("%d%s", System.currentTimeMillis(),k_img);
//				fileName=String.format("%s/%s", dir, k_uploadimg);
//				//kid.setK_img(k_img);
//				File file=new File(fileName);
//				fileinfo.transferTo(file);
			}
			dao.add(kid);
		} catch (Exception e) {
			e.printStackTrace();
			if(fileName!=null){
				throw new UpdateException("파일 업로드 중 오류 발생");
			}
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}
	}

	@Override
	public List<Kid> searchAll(PageBean bean) {
		// TODO Auto-generated method stub
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
