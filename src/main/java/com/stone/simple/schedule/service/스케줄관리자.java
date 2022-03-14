package com.stone.simple.schedule.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.schedule.common.ScheduleDTO;
import com.stone.simple.schedule.dataservice.스케줄DAO;


@Service
public class 스케줄관리자 {
	@Autowired 스케줄DAO 스케줄DAO;
	
	
	public List<ScheduleDTO> showSchedule(int user_no){
		return 스케줄DAO.showSchedule(user_no);
	}
	public void 스케줄저장하다(ScheduleDTO 새스케줄) {
		스케줄DAO.스케줄저장하다(새스케줄);
	}
	public void 스케줄삭제하다(int sno) {
		
		스케줄DAO.스케줄삭제하다(sno);
	}
}
