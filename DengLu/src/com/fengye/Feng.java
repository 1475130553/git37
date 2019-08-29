package com.fengye;

import java.util.List;

public class Feng<T> {
		
		private  int pageNum;  //当前页,从请求页传过来
		private  int pageSize; //每页显示的数据条数
		private  int totalRecord; //总的记录条数
		private  int totalpage; //总页数 ，通过totalRecord和pagesize计算可以得来
		private  int startIndex;  //开始索引，也就sql 语句中的limit, pagesize就是每页显示的记录数
		
		//将要显示的数据放在list中
		private List<T> list;

		//分页显示的页数，比如在页面上显示1，2，3页，start就为1 ，end为3.
		private int start;
		private int end;
		
		public 	 Feng(int pageNum, int pageSize,int totalRecord){
			this.pageNum=pageNum;
			this.pageSize=pageSize;
			this.totalRecord=totalRecord;
			
			//总页数
			if(totalRecord%pageSize==0){
				this.totalpage=totalRecord/pageSize;
			}else{
				this.totalpage=totalRecord/pageSize+1;
			}
			
		    //开始索引。
			this.startIndex=(pageNum-1)*pageSize;
			
		}
			/*this.start=1;
			this.end=5;
			
			if(totalpage<=5){
				this.end=this.totalpage;
			}else{
				this.start=pageNum-2;
				this.end=pageNum+2;
				
				if(start<=0){
					this.start=1;
					this.end=5;
				}
				
				if(end>this.totalpage){
					this.end=totalpage;
					this.start=end-5;
				}
			}
			
		}*/

		public int getPageNum() {
			return pageNum;
		}

		public void setPageNum(int pageNum) {
			this.pageNum = pageNum;
		}

		public int getPageSize() {
			return pageSize;
		}

		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}

		public int getStartIndex() {
			return startIndex;
		}

		public void setStartIndex(int startIndex) {
			this.startIndex = startIndex;
		}

		public List<T> getList() {
			return list;
		}

		public void setList(List<T> list) {
			this.list = list;
		}

		public int getTotalRecord() {
			return totalRecord;
		}

		public void setTotalRecord(int totalRecord) {
			this.totalRecord = totalRecord;
		}

		public int getTotalpage() {
			return totalpage;
		}

		public void setTotalpage(int totalpage) {
			this.totalpage = totalpage;
		}

		public int getStart() {
			return start;
		}

		public void setStart(int start) {
			this.start = start;
		}

		public int getEnd() {
			return end;
		}

		public void setEnd(int end) {
			this.end = end;
		}

	     

	}
