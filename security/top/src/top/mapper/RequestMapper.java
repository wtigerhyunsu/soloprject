package top.mapper;

import java.util.ArrayList;

import top.vo.RequestVO;



public interface RequestMapper {

	public RequestVO select(String userID);

	public ArrayList<RequestVO> selectall();
	
	public ArrayList<RequestVO> selectonly(String userID);

	public void insert(RequestVO model);

	public void update(RequestVO model);

	public RequestVO oselect(int requestNO);

}