package top.frame;

import java.util.ArrayList;



public interface Dao<Id, Model> {
	
	public void insert(Model model) ;
	
	public Model select(Id id);

	public ArrayList<Model> selectall();

	public void update(Model model);

	public void delete(Id id);
	default public ArrayList<Model> selectUserSpecific(Id id) {
		return null;
	}

	default public ArrayList<Model> selectUserSpecificOneIng(Id id) {
		return null;

	}

	
	


}
