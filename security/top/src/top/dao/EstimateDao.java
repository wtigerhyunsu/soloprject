package top.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.EstimateMapper;
import top.vo.EstimateVO;


@Repository("estimatedao")
public class EstimateDao implements Dao<String, EstimateVO> {
	@Autowired
	EstimateMapper estimatemapper;

	@Override
	public EstimateVO select(String userID) {
		return estimatemapper.select(userID);
	}

	@Override
	public ArrayList<EstimateVO> selectall() {
		return estimatemapper.selectall();
	}

	@Override
	public ArrayList<EstimateVO> estselect(EstimateVO model) {
		return estimatemapper.estselect(model);
	}

	@Override
	public void update(EstimateVO model) {
		estimatemapper.update(model);
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void insert(EstimateVO model) {
		estimatemapper.insert(model);
		
	}

	@Override
	public EstimateVO oselect(int id) {
		return estimatemapper.oselect(id);
	}
	@Override
	public EstimateVO datagetselect(EstimateVO model) {
		return estimatemapper.datagetselect(model);
	}



}