package kr.co.ezenac.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ezenac.beans.ContentBean;
import kr.co.ezenac.beans.PageBean;
import kr.co.ezenac.beans.ReviewBean;
import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.mapper.AdminMapper;

@Service
@PropertySource("/properties/option.properties")
public class BoardService {

	@Value("${path.upload}")
	private String pathUpload;

	@Value("${page.listcnt}")
	private int pageListCnt;

	@Value("${page.paginationcnt}")
	private int pagePaginationCnt;

	@Autowired
	private AdminMapper adminMapper;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	public List<ReviewBean> getReviewList() {

		return adminMapper.getReviewList();

	}

	private String saveUploadFile(MultipartFile uploadFile) {

		String fileName = System.currentTimeMillis() + "_" + uploadFile.getOriginalFilename();

		try {
			uploadFile.transferTo(new File(pathUpload + "/" + fileName));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return fileName;
	}

	public void addContentInfo(ContentBean writeContentBean) {

		MultipartFile uploadFile = writeContentBean.getUploadFile();

		if (uploadFile.getSize() > 0) {
			String fileName = saveUploadFile(uploadFile);
			writeContentBean.setContentFile(fileName);
		}

		writeContentBean.setContentWriterIdx(loginUserBean.getUserIdx());

		adminMapper.addContentInfo(writeContentBean);
	}

	public String getBoardInfoName(int boardInfoIdx) {
		return adminMapper.getBoardInfoName(boardInfoIdx);
	}

	public List<ContentBean> getContentList(int boardInfoIdx, int page) {

		int start = (page - 1) * pageListCnt;
		RowBounds rowBounds = new RowBounds(start, pageListCnt);

		return adminMapper.getContentList(boardInfoIdx, rowBounds);
	}

	public void modifyContentInfo(ContentBean modifyContentBean) {

		MultipartFile uploadFile = modifyContentBean.getUploadFile();

		if (uploadFile.getSize() > 0) {
			String fileName = saveUploadFile(uploadFile);
			modifyContentBean.setContentFile(fileName);
		}

		adminMapper.modifyContentInfo(modifyContentBean);
	}

	public void deleteContentInfo(int contentIdx) {
		adminMapper.deleteContentInfo(contentIdx);
	}

	public PageBean getContentCnt(int contentBoardIdx, int currentPage) {
		int contentCnt = adminMapper.getContentCnt(contentBoardIdx);
		return new PageBean(contentCnt, currentPage, pageListCnt, pagePaginationCnt);
	}

}
