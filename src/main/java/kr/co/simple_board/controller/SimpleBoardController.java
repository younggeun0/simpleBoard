package kr.co.simple_board.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.simple_board.domain.DetailPost;
import kr.co.simple_board.domain.Post;
import kr.co.simple_board.service.SimpleBoardService;
import kr.co.simple_board.vo.NewPostVO;
import kr.co.simple_board.vo.PostListVO;

@Controller
public class SimpleBoardController {

	@RequestMapping(value="/index.do",method= {GET,POST})
	public String simpleBoard(
		PostListVO plvo, Model model) {
		
		if (plvo.getCurrPage() == null || "".equals(plvo.getCurrPage())) {
			plvo.setCurrPage("1");
		}
	
		SimpleBoardService sbs = new SimpleBoardService();
		
		int totalCnt = sbs.getTotalCnt();
		int begin = sbs.beginNum(Integer.parseInt(plvo.getCurrPage()));
		int end = sbs.endNum(begin);
		
		int pageScale = sbs.pageScale();
		
		plvo.setBegin(String.valueOf(begin));
		plvo.setEnd(String.valueOf(end));
		
		List<Post> postList = sbs.searchPostList(plvo);
		System.out.println(postList);
		
		int totalPage = sbs.getTotalPage(totalCnt);
		int pageIndexNum = sbs.pageIndexNum();
		int startPage = sbs.startPage(Integer.parseInt(plvo.getCurrPage()), pageIndexNum);
		int endPage = sbs.endPage(startPage, pageIndexNum, totalPage);
		
		model.addAttribute("forwardFlag",false);
		model.addAttribute("backwardFlag",false);
		
		// 첫번째 페이지 인덱스 화면이 아닌 경우
		if (Integer.parseInt(plvo.getCurrPage()) > pageIndexNum) {
			model.addAttribute("forwardFlag",true);
		}
		// 마지막 페이지 인덱스가 마지막이 아닌 경우
		if (totalPage > endPage) {
			model.addAttribute("backwardFlag",true);
		}
		
		model.addAttribute("pageScale", pageScale);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currPage", plvo.getCurrPage());
		model.addAttribute("postList", postList);
		
		return "board";
	}
	
	@RequestMapping(value="/detail_post.do", method=GET)
	public String detailPost(String sb_num, Model model) {
		
		SimpleBoardService sbs = new SimpleBoardService();
		DetailPost dp = sbs.searchPostDetail(sb_num);
		sbs.viewDetailPost(sb_num);
		model.addAttribute("detailPost", dp);
		return "detail";
	}
	
	@RequestMapping(value="/write.do", method=GET)
	public String writeNewPostForm() {
		return "write";
	}
	
	@RequestMapping(value="/write_process.do", method=POST)
	public String writeNewPostProcess(NewPostVO npvo, Model model) {
		
		SimpleBoardService sbs = new SimpleBoardService();
		if(sbs.addNewPost(npvo)) {
			model.addAttribute("writeFlag", true);
		}
		
		return "forward:/index.do";
	}
	
}
