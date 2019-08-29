package com.doget;

import java.io.Serializable;

import Shujuku.dingyi;

public class Shoop implements Serializable {
	private dingyi fushi;
	private int num;
	
	public Shoop() {
		super();
	}
	public Shoop(dingyi fushi) {
		super();
		this.fushi = fushi;
	
	}
	public dingyi getFushi() {
		return fushi;
	}
	public void setFushi(dingyi fushi) {
		this.fushi = fushi;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	 //����С�Ƶķ���
		public Double  smallCount(){
			return (double) (num*fushi.getShuliang());
		}

}
