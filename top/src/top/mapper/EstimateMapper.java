package top.mapper;

import java.util.ArrayList;

import top.vo.EstimateVO;



public interface EstimateMapper {

	public EstimateVO select(String userID);

	public ArrayList<EstimateVO> selectall();


	public void insert(EstimateVO model);

	public void update(EstimateVO model);

	public EstimateVO oselect(int id);
	public EstimateVO datagetselect(EstimateVO model);

	public ArrayList<EstimateVO> estselect(EstimateVO model);
	public EstimateVO dataselect(EstimateVO model);

}