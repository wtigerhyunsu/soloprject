package top.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.RequestMapper;
import top.vo.RequestVO;

@Repository("requestdao")
public class RequestDao implements Dao<String, RequestVO> {
	@Autowired
	RequestMapper requestmapper;

	@Override
	public RequestVO select(String userID) {
		return requestmapper.select(userID);
	}

	@Override
	public ArrayList<RequestVO> selectall() {
		return requestmapper.selectall();
	}
	@Override
	public ArrayList<RequestVO> selectonly(String userID) {
		return requestmapper.selectonly(userID);
	}

	@Override
	public void update(RequestVO model) {
		requestmapper.update(model);

	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insert(RequestVO model) {
		requestmapper.insert(model);

	}

	@Override
	public RequestVO oselect(int requestNO) {
		return requestmapper.oselect(requestNO);
	}

}