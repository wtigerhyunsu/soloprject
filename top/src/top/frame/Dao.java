package top.frame;

import java.util.ArrayList;

import top.vo.EstimateVO;




public interface Dao<Id, Model> {
	
	public void insert(Model model) ;
	
	public Model select(String id);
	public Model oselect(int id);
	default public Model datagetselect(Model model) {
		return null;
	}

	public ArrayList<Model> selectall();
	default public ArrayList<Model> selectonly(String userID) {
		return null;
	}

	public void update(Model model);

	public void delete(String id);
	default public ArrayList<Model> selectUserSpecific(String id) {
		return null;
	}

	default public ArrayList<Model> selectUserSpecificOneIng(String id) {
		return null;

	}

	default ArrayList<Model> estselect(Model model) {
		return null;
	}


	
	


}
