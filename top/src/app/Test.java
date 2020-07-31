package app;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;

import top.vo.UserVO;

public class Test {

	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, UserVO> biz = (Biz<String, UserVO>) factory.getBean("userbiz");

		UserVO container = new UserVO();
//	
//		container.setConWarningWeight(20.00);
//		container.setConWarningQuantity(10); 
//		container.setIngBrand("아아아");
//		container.setIngID("밀가루");

		System.out.println(container.toString());

		try {
//			biz.modify(container);
			System.out.println("container modify Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}
}
