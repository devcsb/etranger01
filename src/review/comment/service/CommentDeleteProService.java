package review.comment.service;

import static common.db.JdbcUtil.*;
import java.sql.Connection;

import review.comment.dao.CommentDAO;

public class CommentDeleteProService {

	public boolean isArticleWriter(int review_comment_num, String review_comment_member_id) {
		
		Connection con = getConnection();
		CommentDAO commentDAO = CommentDAO.getInstance();
		commentDAO.setConnnection(con);

		boolean isArticleWriter = commentDAO.isCommentWriter(review_comment_num, review_comment_member_id);
		
		close(con);

		return isArticleWriter;
	}

	
	public boolean removeArticle(int review_comment_num, int review_comment_review_num) {
		
		Connection con = getConnection();
		CommentDAO commentDAO = CommentDAO.getInstance();
		commentDAO.setConnnection(con);

		boolean isDeleteSuccess = false;

		int deleteCount = commentDAO.deleteComment(review_comment_num, review_comment_review_num);

		if (deleteCount > 0) {
			isDeleteSuccess = true;
			commit(con);

		} else {
			rollback(con);
		}

		close(con);

		return isDeleteSuccess;
	}

}
