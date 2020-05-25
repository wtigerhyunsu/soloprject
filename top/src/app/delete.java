package app;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;

import top.vo.UserVO;

public class delete {

	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, UserVO> biz = (Biz<String, UserVO>) factory.getBean("userbiz");

		UserVO container = new UserVO();
		container = biz.get("¹Ð°¡·ç");
		System.out.println(container);
//		System.out.println(container.getIngID());
//		String test = container.getIngID();
		try {
//			biz.remove(test);
			System.out.println("container delete Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}
}
