package top.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import top.frame.Biz;
import top.vo.RequestVO;

@Controller
public class MainController {
	@Resource(name = "requestbiz")
	Biz<String, RequestVO> requestbiz;
	// Show main page
	@RequestMapping("/")
	public ModelAndView main_simple(ModelAndView mv) {
		mv.setViewName("main/main");
		return mv;
	}

	@RequestMapping("/main.top")
	public ModelAndView main(ModelAndView mv, HttpServletRequest req, HttpServletResponse res) {
		System.out.println("into main.top!");
		HttpSession session = req.getSession();
		String userID = (String) session.getAttribute("loginId");
		System.out.println(userID+"님이 로그인 하셨습니다");
		for (RequestVO i : requestbiz.get()) {
			System.out.println(i);
		}

		mv.addObject("requestListData", requestbiz.get());
		mv.addObject("center", "../list/requestList");
		mv.addObject("center", "../list/requestlist");
		mv.setViewName("main/main");
		res.setContentType("text/html; charset=UTF-8");

		return mv;
	}


}
