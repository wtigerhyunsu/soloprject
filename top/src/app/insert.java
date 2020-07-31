package app;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.UserVO;


public class insert {

	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		@SuppressWarnings("unchecked")
		Biz<String, UserVO> biz = (Biz<String, UserVO>) factory.getBean("userbiz");

		UserVO container = new UserVO();
		

		container.setUserID("ddd");
		container.setUserPwd("sss");
		container.setUserName("das");
		container.setUserAdd("ddd");
		container.setUserPhone("010");
		container.setUserMail("sadsad");
		container.setUserDate("1995-08-04");
//		container.setIngID("¹Ð°¡·ç");
//		container.setIngCategory("dw");
//		container.setIngName("dsa");
//		container.setIngPrice(5);
//		container.setIngUnit("sda");
//		container.setIngBrand("sda");
//		container.setIngType("sda");
//		container.setIngWeight(4);
//		container.setIngRegDate("dsa");
//		container.setIngLink("dsa");
//		container.setIngLinkCount(2);
//		container.setIngImgName("sad");
//		container.setHqID("cafe_TOP_hq");
//		
		System.out.println(container.toString());

		try {
			biz.register(container);;
			System.out.println("container Register Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}
