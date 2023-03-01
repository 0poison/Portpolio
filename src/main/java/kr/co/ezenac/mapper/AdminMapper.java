package kr.co.ezenac.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.BoardInfoBean;
import kr.co.ezenac.beans.ContentBean;
import kr.co.ezenac.beans.ProductInfoBean;
import kr.co.ezenac.beans.ReviewBean;
import kr.co.ezenac.beans.UserBean;

public interface AdminMapper {

	AdminBean getLoginAdminInfo(AdminBean tempLoginAdminBean);

	List<BoardInfoBean> getTopMenuList();

	List<ProductInfoBean> getProductList();

	List<UserBean> getUserList();

	UserBean getAllUserInfo(int userIdx);

	List<UserBean> getUsers(RowBounds rowBounds);

	ContentBean getContentInfo(int contentIdx);

	@Select("SELECT NUM, SCORE, CONTENT, WRITER, REG_DATE, REF " + "FROM REVIEWBOARD ")
	List<ReviewBean> getReviewList();

	@SelectKey(statement = "SELECT CONTENT_SEQ.NEXTVAL FROM DUAL", keyProperty = "content_idx", before = true, resultType = int.class)

	@Insert("INSERT INTO CONTENT_TABLE(CONTENT_IDX, CONTENT_SUBJECT, CONTENT_TEXT, "
			+ "CONTENT_FILE, CONTENT_WRITER_IDX, CONTENT_BOARD_IDX, CONTENT_DATE) "
			+ "VALUES (#{contentIdx}, #{contentSubject}, #{contentText}, #{contentFile}, "
			+ "#{contentWriterIdx}, #{contentBoardIdx}, now())")
	void addContentInfo(ContentBean writeContentBean);

	@Select("SELECT BOARD_INFO_NAME " + "FROM BOARD_INFO_TABLE " + "WHERE BOARD_INFO_IDX = #{boardInfoIdx}")
	String getBoardInfoName(int boardInfoIdx);

	@Select("SELECT A1.CONTENT_IDX, A1.CONTENT_SUBJECT, A2.USER_NAME AS CONTENT_WRITER_NAME, "
			+ "DATE_FORMAT(A1.CONTENT_DATE, 'YYYY-MM-DD') AS CONTENT_DATE " + "FROM CONTENT_TABLE A1, USER_TABLE A2 "
			+ "WHERE A1.CONTENT_WRITER_IDX = A2.USER_IDX " + "and A1.CONTENT_BOARD_IDX = #{boardInfoIdx} "
			+ "ORDER BY A1.CONTENT_IDX DESC")
	List<ContentBean> getContentList(int boardInfoIdx, RowBounds rowBounds);

	@Update("UPDATE CONTENT_TABLE " + "SET CONTENT_SUBJECT = #{contentSubject}, CONTENT_TEXT = #{contentText}, "
			+ "CONTENT_FILE = #{contentFile} " + "WHERE CONTENT_IDX = #{content_idx}")
	void modifyContentInfo(ContentBean modifyContentBean);

	@Delete("DELETE FROM CONTENT_TABLE WHERE CONTENT_IDX = #{contentIdx}")
	void deleteContentInfo(int contentIdx);

	@Select("SELECT COUNT(*) FROM CONTENT_TABLE WHERE CONTENT_BOARD_IDX = #{contentBoardIdx}")
	int getContentCnt(int contentBoardIdx);

}
