package kr.co.simple_board.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.simple_board.domain.DetailPost;
import kr.co.simple_board.domain.Post;
import kr.co.simple_board.vo.NewPostVO;
import kr.co.simple_board.vo.PostListVO;

public class SimpleBoardDAO {
	private static SimpleBoardDAO sb_dao;
	private SqlSessionFactory ssf;
	
	public static SimpleBoardDAO getInstance() {
		if(sb_dao == null) {
			org.apache.ibatis.logging.LogFactory.useLog4JLogging(); // ·Î±ë »ç¿ë
			sb_dao = new SimpleBoardDAO();
		}
		return sb_dao;
	}
	
	public synchronized SqlSessionFactory getSessionFactory() {
		Reader r = null;
		
		try {
			r = Resources.getResourceAsReader("kr/co/simple_board/dao/mybatis_config.xml");
			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
			ssf = ssfb.build(r);
			if (r != null) { r.close(); } 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return ssf;
	}
	
	public int selectTotalCnt() {
		SqlSession ss = SimpleBoardDAO.getInstance().getSessionFactory().openSession();
		int cnt = ss.selectOne("selectTotalCnt");
		ss.close();
		return cnt;
	}
	
	public List<Post> selectPostList(PostListVO plvo) {
		List<Post> list = null;
		
		SqlSession ss = SimpleBoardDAO.getInstance().getSessionFactory().openSession();
		list = ss.selectList("selectPostList", plvo);
		ss.close();
		return list;
	}
	
	public DetailPost selectDetailPost(String sb_num) {
		DetailPost dp = null;
		SqlSession ss = SimpleBoardDAO.getInstance().getSessionFactory().openSession();
		dp = ss.selectOne("selectDetailPost",sb_num);
		ss.close();
		return dp;
	}
	
	public void updateViewCnt(String sb_num) {
		SqlSession ss = SimpleBoardDAO.getInstance().getSessionFactory().openSession();
		ss.update("updateViewCnt",sb_num);
		ss.commit();
		ss.close();
	}
	
	public boolean insertNewPost(NewPostVO npvo) {
		boolean flag = false;
		SqlSession ss = SimpleBoardDAO.getInstance().getSessionFactory().openSession();
		int cnt = ss.insert("insertNewPost",npvo);
		if (cnt == 1) {
			flag = true;
			ss.commit();
		}
		ss.close();
		return flag;
	}
}
