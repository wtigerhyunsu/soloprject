package top.frame;

import java.util.ArrayList;

import top.vo.EstimateVO;

public interface Biz<Id, Model> {
	
	public void register(Model model); 
	
	public void remove(String id);
	
	public Model get(String id);
	public Model oget(int id);
	default public Model dataget(Model model) {
		return null;
	}

	public ArrayList<Model> get();
	default public ArrayList<Model> oget(String userID) {
		return null;
	}
		
	public void modify(Model model);

	//하나의 의뢰서에대한 모든 견적서를 가져올때사용
	default ArrayList<EstimateVO> estget(Model model) {
		return null;
	}
	//하나의 견적서 불러올때사용


	

	

	

	




	

}
