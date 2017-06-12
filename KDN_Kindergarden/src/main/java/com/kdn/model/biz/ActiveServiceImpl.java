package com.kdn.model.biz;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kdn.model.domain.Active;
import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.PageBeanGallery;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("activeService")
public class ActiveServiceImpl implements ActiveService {
	@Autowired
	@Qualifier("activeDao")
	private ActiveDao dao;
	@Override
	public void add(Active active, String dir, int a_t_id) {
		// TODO Auto-generated method stub
		File[] files = null;
		int size = 0;
		try {
			int a_id = dao.getBoardNo();
			active.setA_id(a_id);
			active.setA_t_id(a_t_id);
//			System.out.println(active);
			dao.add(active);
			
			MultipartFile[] fileup = active.getFileup();
			if(fileup!=null){
				size = fileup.length;
				files = new File[size];
				ArrayList<ActiveFile> fileInfos = new ArrayList<ActiveFile>(size);
				String af_rfilename = null;
				String af_sfilename = null;
				int index = 0;
				for (MultipartFile file : fileup) {
					af_rfilename = file.getOriginalFilename();
					af_sfilename = String.format("%d%s", System.currentTimeMillis(), af_rfilename);
					fileInfos.add(new ActiveFile(af_rfilename, af_sfilename));
					String fileName = String.format("%s%s", dir, af_sfilename);
					files[index] = new File(fileName);
					file.transferTo(files[index++]);
				}
				dao.addFiles(fileInfos, a_id);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			if(files != null){
			for(File file : files){
				if(file!=null&& file.exists()){
					file.delete();
				}
				}
			}
			throw new UpdateException("게시글 작성 중 오류 발생");
		}
	}

	@Override
	public Active search(int a_id) {
		try{
			return dao.search(a_id);
		}catch(Exception e){
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public void update(Active active) {
		// TODO Auto-generated method stub
		try{
			dao.update(active);
		}catch(Exception e){
			e.printStackTrace();
			throw new UpdateException("게시글 수정 중 오류 발생");
		}
	}

	@Override
	public void remove(int a_id) {
		// TODO Auto-generated method stub
		try {
			dao.removeFiles(a_id);
			dao.remove(a_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}
	}

	@Override
	public List<Active> searchAll(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		try {
			int total = dao.getCount(bean);
			PageUtility bar = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
			bean.setPagelink(bar.getPageBar());
			return dao.searchAll(bean);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류발생");
		}
	}

	@Override
	public List<ActiveFile> searchImg(PageBeanGallery bean) {
		// TODO Auto-generated method stub
		try{
			int total = dao.getCount(bean);
			PageUtility bar = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
			bean.setPagelink(bar.getPageBar());
			System.out.println(dao.searchImg(bean));
			return dao.searchImg(bean);
		}catch(Exception e){
			e.printStackTrace();
			throw new UpdateException("이미지 게시글 검색 중 오류 발생");
		}
	}

}
