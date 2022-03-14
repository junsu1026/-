package com.stone.simple.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.area.common.Local;
import com.stone.simple.dataservice.지역DAO;

@Service
public class 지역서비스 {

	@Autowired 지역DAO 지역DAO;
	
	public String 지역검색하다(int cno) {
		
		return 지역DAO.지역가져오다(cno);
	}
	public Local 도시검색하다(int lno) {
		return 지역DAO.도시가져오다(lno);
	}
}
