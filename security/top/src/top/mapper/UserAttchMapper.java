package top.mapper;

import java.util.ArrayList;

import top.vo.UserAttchVO;

public interface UserAttchMapper {

	public UserAttchVO select(String userID);

	public ArrayList<UserAttchVO> selectall();

	public void insert(UserAttchVO model);

	public void update(UserAttchVO model);

	public UserAttchVO oselect(int id);

}