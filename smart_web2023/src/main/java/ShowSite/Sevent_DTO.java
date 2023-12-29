package ShowSite;

import java.sql.Date;

public class Sevent_DTO {
	private int b_idx; //게시글 번호
	private int s_idx; //회원 번호
	private String writer;
	private String title; //제목
	private String content; //내용
	private String originfile_name; //원본 파일명
	private String savefile_name; //저장 파일명
	private int read_cnt;// 조회수
	private Date post_date; //작서일
	private Date update_date; //수정일
	private int del_or_not; //삭제 여부
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public int getS_idx() {
		return s_idx;
	}
	public void setS_idx(int s_idx) {
		this.s_idx = s_idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOriginfile_name() {
		return originfile_name;
	}
	public void setOriginfile_name(String originfile_name) {
		this.originfile_name = originfile_name;
	}
	public String getSavefile_name() {
		return savefile_name;
	}
	public void setSavefile_name(String savefile_name) {
		this.savefile_name = savefile_name;
	}
	public int getRead_cnt() {
		return read_cnt;
	}
	public void setRead_cnt(int read_cnt) {
		this.read_cnt = read_cnt;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getDel_or_not() {
		return del_or_not;
	}
	public void setDel_or_not(int del_or_not) {
		this.del_or_not = del_or_not;
	}
	
}