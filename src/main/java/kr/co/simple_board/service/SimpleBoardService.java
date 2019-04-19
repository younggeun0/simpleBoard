package kr.co.simple_board.service;

import java.util.List;

import kr.co.simple_board.dao.SimpleBoardDAO;
import kr.co.simple_board.domain.DetailPost;
import kr.co.simple_board.domain.Post;
import kr.co.simple_board.vo.NewPostVO;
import kr.co.simple_board.vo.PostListVO;

public class SimpleBoardService {

	private SimpleBoardDAO sb_dao;
	
	public SimpleBoardService() {
		sb_dao = SimpleBoardDAO.getInstance();
	}
	
	public int getTotalCnt() {
		int cnt = sb_dao.selectTotalCnt();
		return cnt;
	}
	
	public int pageScale() {
		return 5;
	}
	
	public int getTotalPage(int totalCnt) {
		int totalPage = totalCnt / pageScale();
		if (totalCnt % pageScale() != 0) {
			totalPage++;
		}
		return totalPage;
	}
	
	public int beginNum(int currPage) {
		int begin = 1;
		begin = currPage * pageScale() - pageScale() + 1;
		return begin;
	}
	
	public int endNum(int beginNum) {
		int end = beginNum + pageScale() - 1;
		return end;
	}
	
	public int pageIndexNum() {
		return 3;
	}
	
	public int startPage(int currPage, int pageIndexNum) {
		int startPage = ((currPage - 1)/pageIndexNum) * pageIndexNum + 1;
		return startPage;
	}
	
	public int endPage(int startPage, int pageIndexNum, int totalPage) {
		int endPage = (((startPage - 1) + pageIndexNum) / pageIndexNum)*pageIndexNum;
		
		if (totalPage <= endPage) {
			endPage = totalPage;
		}
		
		return endPage;
	}
	
	public void viewDetailPost(String sbNum) {
		sb_dao.updateViewCnt(sbNum);
	}
	
	public List<Post> searchPostList(PostListVO plvo) {
		List<Post> list = null;
		list = sb_dao.selectPostList(plvo);
		return list;
	}
	
	public DetailPost searchPostDetail(String sbNum) {
		DetailPost dp = null;
		dp = sb_dao.selectDetailPost(sbNum);
		return dp;
	}
	
	public boolean addNewPost(NewPostVO npvo) {
		boolean flag = false;
		flag = sb_dao.insertNewPost(npvo);
		return flag;
	}
}
