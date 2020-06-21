package top.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.UserAttchMapper;
import top.vo.UserAttchVO;

@Repository("userattchdao")
public class UserAttchDao implements Dao<String, UserAttchVO> {
	@Autowired
	UserAttchMapper userattchmapper;

	@Override
	public UserAttchVO select(String userID) {
		return userattchmapper.select(userID);
	}

	@Override
	public ArrayList<UserAttchVO> selectall() {
		return userattchmapper.selectall();
	}

	@Override
	public void update(UserAttchVO model) {
		userattchmapper.update(model);
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void insert(UserAttchVO model) {
		userattchmapper.insert(model);
		
	}

	@Override
	public UserAttchVO oselect(int id) {
		return userattchmapper.oselect(id);
	}



}