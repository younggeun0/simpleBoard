package kr.co.simple_board.domain;

public class DetailPost {
	
	private String subject, content, input_date, view_cnt;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
}
