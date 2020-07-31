package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.RequestVO;



@Service("requestbiz")
public class RequestBiz implements Biz<String, RequestVO> {

	@Resource(name = "requestdao")
	Dao<String, RequestVO> dao;
	
	@Override
	public RequestVO get(String userID) {
		return dao.select(userID);
	}


	@Override
	public ArrayList<RequestVO> get() {
		return dao.selectall();
	}
	
	@Override
	public ArrayList<RequestVO> oget(String userID) {
		return dao.selectonly(userID);
	}
	

	@Override
	public void modify(RequestVO model) {
		dao.update(model);
		
	}

	@Override
	public void register(RequestVO model) {
		dao.insert(model);
		
	}

	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public RequestVO oget(int requestNO) {
		return dao.oselect(requestNO);
	}
	
	
	


}