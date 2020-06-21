package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.EstimateVO;

@Service("estimatebiz")
public class EstimateBiz implements Biz<String, EstimateVO> {

	@Resource(name = "estimatedao")
	Dao<String, EstimateVO> dao;
	
	@Override
	public EstimateVO get(String userID) {
		return dao.select(userID);
	}

	@Override
	public ArrayList<EstimateVO> get() {
		return dao.selectall();
	}

	@Override
	public ArrayList<EstimateVO> estget(EstimateVO model) {
		return dao.estselect(model);
	}

	@Override
	public void modify(EstimateVO model) {
		dao.update(model);
		
	}

	@Override
	public void register(EstimateVO model) {
		dao.insert(model);
		
	}

	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EstimateVO oget(int requestNO) {
		return dao.oselect(requestNO);
	}
	@Override
	public EstimateVO dataget(EstimateVO model) {
		return dao.datagetselect(model);
	}
	
	
	


}