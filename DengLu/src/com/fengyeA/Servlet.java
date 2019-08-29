package com.fengyeA;

import java.util.List;

import com.fengye.Feng;
import com.fengye.FengYe;
import com.fengye.FengYeb;

import Shujuku.dingyi;

public class Servlet {
	   public  Feng<dingyi>  find(int pageNum,int pageSize){
		   List<dingyi> list=FengYe.getAllfen();
		   int totalrecord=list.size();
		   Feng<dingyi> asd=new Feng<dingyi>(pageNum, pageSize, totalrecord); 		   
		   int startindex=asd.getStartIndex();
		   asd.setList(FengYeb.fengye(startindex, pageSize));
		  
		   
		return asd;
}
}