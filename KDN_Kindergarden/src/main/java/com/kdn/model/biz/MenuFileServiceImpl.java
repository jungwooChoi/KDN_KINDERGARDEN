package com.kdn.model.biz;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kdn.model.domain.ActiveFile;
import com.kdn.model.domain.MenuFile;
import com.kdn.model.domain.PageBeanGallery;
import com.kdn.model.domain.UpdateException;
import com.kdn.util.PageUtility;

@Service("menufileService")
public class MenuFileServiceImpl implements MenuFileService {
	@Autowired
	@Qualifier("menufileDao")
	private MenuFileDao dao;
	@Override
	public void add(MenuFile menufile, String dir, int mf_t_id) {
		// TODO Auto-generated method stub
		String fileName=null;
		try {
			MultipartFile fileinfo=menufile.getFileup();
			if(fileinfo!=null){
				String mf_sfilename=String.format("%d%s", System.currentTimeMillis(),fileinfo.getOriginalFilename());
				fileName=String.format("%s/%s", dir, mf_sfilename);
				menufile.setMf_sfilename(mf_sfilename);
				File file=new File(fileName);
				fileinfo.transferTo(file);
			}
			dao.add(menufile);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw new UpdateException("게시글 작성 중 오류 발생");
		}
	}

	@Override
	public MenuFile search(int mf_id) {
		try{
			return dao.search(mf_id);
		}catch(Exception e){
			e.printStackTrace();
			throw new UpdateException("게시글 검색 중 오류 발생");
		}
	}

	@Override
	public void remove(int mf_id) {
		try {
			dao.remove(mf_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw new UpdateException("게시글 삭제 중 오류 발생");
		}

	}

	@Override
	public List<MenuFile> searchAll(PageBeanGallery bean) {
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

}
