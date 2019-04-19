package kr.co.simple_board.domain;

public class Post {
	
	private String sb_num, subject, input_date, view_cnt;

	public String getSb_num() {
		return sb_num;
	}

	public void setSb_num(String sb_num) {
		this.sb_num = sb_num;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public String getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(String view_cnt) {
		this.view_cnt = view_cnt;
	}

	@Override
	public String toString() {
		return "Post [sb_num=" + sb_num + ", subject=" + subject + ", input_date=" + input_date + ", view_cnt="
				+ view_cnt + "]";
	}
}
