package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.UserAttchVO;

@Service("userattchbiz")
public class UserAttchBiz implements Biz<String, UserAttchVO> {

	@Resource(name = "userattchdao")
	Dao<String, UserAttchVO> dao;

	@Override
	public UserAttchVO get(String userID) {
		return dao.select(userID);
	}

	@Override
	public ArrayList<UserAttchVO> get() {
		return dao.selectall();
	}

	@Override
	public void modify(UserAttchVO model) {
		dao.update(model);

	}

	@Override
	public void register(UserAttchVO model) {
		dao.insert(model);

	}

	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserAttchVO oget(int id) {
		return dao.oselect(id);
	}

}