package com.myweb.util;

public class Criteria {
	private int pageNum;//page num
	private int count; //게시물 개수
	public Criteria() {
		//최초 게시판에 진입 시 기본 값 설정, 페이지 1번, 10개의 데이터
		this.pageNum=1;
		this.count=10;
	}
	
	//limit x , count 구문에서 전달된 x 값을 구하는 메서드
	public int getPageStart() {
		return (pageNum-1)*count;
	}
	
	public Criteria(int pageNum, int count) {
		super();
		this.pageNum = pageNum;
		this.count = count;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
