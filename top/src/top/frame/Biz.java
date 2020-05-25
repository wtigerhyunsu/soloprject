package top.frame;

import java.util.ArrayList;

public interface Biz<Id, Model> {
	
	public void register(Model model); 
	
	public void remove(String id);
	
	public Model get(String id);

	public ArrayList<Model> get();

	default public ArrayList<Model> getUserSpecific(String hqID) {
		return null;
	}
	default public ArrayList<Model> selectUserSpecificOneIng(String hqID) {
		return null;
	}

	
	public void modify(Model model);

	




	

}
