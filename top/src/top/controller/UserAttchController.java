package top.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import top.frame.Biz;
import top.vo.UserAttchVO;

@Controller
public class UserAttchController {
	@Resource(name = "userattchbiz")
	Biz<String, UserAttchVO> attchbiz;
	
	SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	Date time = new Date();

	
	@RequestMapping("/fileinput.top")
	public ModelAndView paddimpl(ModelAndView mv,HttpServletRequest request,UserAttchVO attch) {
		System.out.println("fileinput");
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("loginId");
		System.out.println(userID);
		System.out.println(attch.getMf()+"into fileinput ");
		System.out.println(attch.getMf().getOriginalFilename());
		System.out.println(attch.getMf().getName());
		System.out.println(attch.getMf().getSize());
		String imgname = 
				attch.getMf().getOriginalFilename();
		double price = attch.getMf().getSize();
		String redate = format.format(time);
		
		//attch.setImgname(imgname);
	
//		attch= new UserAttchVO(imgname,price,redate,userID);
		attch.setImgname(imgname);
		attch.setPrice(price);
		attch.setRegdate(redate);
		attch.setUserID(userID);;
		
		System.out.println(attch);

		try {
			System.out.println(attch.getMf()+"util go");
			Util.saveFile(attch.getMf());
		
			attchbiz.register(attch);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.setViewName("main");
		return mv;
	}
	
	

}
