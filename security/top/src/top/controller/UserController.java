package top.controller;

import java.io.UnsupportedEncodingException;
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
import top.vo.UserVO;

@Controller
public class UserController {

	@Resource(name = "userbiz")
	Biz<String, UserVO> userbiz;
	
	@Resource(name = "userattchbiz")
	Biz<String, UserAttchVO> attchbiz;
	
	SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

	Date time = new Date();

	@RequestMapping("/choice.top")
	public ModelAndView choice(ModelAndView mv) {
		System.out.println("enter into signup.top");
		mv.setViewName("user/choiceposition");
		return mv;
	}

	@RequestMapping("/signup.top")
	public ModelAndView signup(ModelAndView mv, HttpServletRequest request) {
		System.out.println("enter into signup.top");
		String position = request.getParameter("position");
		System.out.println("position:" + position);

		mv.addObject("position", position);
		mv.setViewName("user/register");

		return mv;
	}

	// login
	@RequestMapping("/login.top")
	public ModelAndView login(HttpServletRequest request) {

		System.out.println("entered login.top");
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "../user/login");
		mv.setViewName("main/main");
		return mv;
	}

	@RequestMapping(value = "/register.top", produces = "text/plain;charset=UTF-8")
	public String signupimpl(HttpServletRequest request, UserVO user, HttpServletResponse res,UserAttchVO attch) {
		System.out.println("enter into signupimpl.top");
		try {

			// 한글 안깨지려면!
			request.setCharacterEncoding("UTF-8");

			// getparameter start
			System.out.println("register");
//
//			String userID = request.getParameter("userID").trim();
//			System.out.println(userID);
//			String userPwd = request.getParameter("userPwd").trim();
//			System.out.println(userPwd);
//			String userName = request.getParameter("userName").trim();
//			System.out.println(userName);
//			String userAdd = request.getParameter("userAdd").trim();
//			System.out.println(userAdd);
//			String userPhone = request.getParameter("userPhone").trim();
//			System.out.println(userPhone);
//			String userMail = request.getParameter("userMail").trim();
//			System.out.println(userMail);
//			String userDate = request.getParameter("userDate").trim();
//			String position = request.getParameter("position").trim();
//			String adcheck = "NO";
//			System.out.println(userDate);
			user.setUserID(request.getParameter("userID").trim());
			user.setUserPwd(request.getParameter("userPwd").trim());
			user.setUserName(request.getParameter("userName").trim());
			user.setUserAdd(request.getParameter("userAdd").trim());
			user.setUserPhone(request.getParameter("userPhone").trim());
			user.setUserMail(request.getParameter("userMail").trim());
			user.setUserDate(request.getParameter("userDate").trim());
			user.setPosition(request.getParameter("position").trim());
			user.setAdcheck("NO");
			
			//attch
			System.out.println(attch.getMf()+"into fileinput ");
			System.out.println(attch.getMf().getOriginalFilename());
			System.out.println(attch.getMf().getName());
			System.out.println(attch.getMf().getSize());
			String imgname = 
					attch.getMf().getOriginalFilename();
			double price = attch.getMf().getSize();
			String redate = format.format(time);
			attch.setImgname(imgname);
			attch.setPrice(price);
			attch.setRegdate(redate);
			attch.setUserID(request.getParameter("userID").trim());;
			
			System.out.println(attch);
			
			// hq resgister set and register
			try {
//				user = new UserVO(userID, userPwd, userName, userAdd, userPhone, userMail, userDate, position, adcheck);
				System.out.println(user);
				userbiz.register(user);
				System.out.println(attch.getMf()==null);
				Util.saveFile(attch.getMf());
				attchbiz.register(attch);;
				
				// error 날 상황 -> utf encoding안될때, sql exception
			} catch (Exception e) {

				// null일때 error남
				System.out.println("----------SQL INSERT FAIL ----------------");
			}
		} catch (UnsupportedEncodingException e1) {
			System.out.println("----------ENCODING FAIL----------------");
			e1.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/main");
		return "redirect:main.top";
	}

	// logout
	@RequestMapping("/logout.top")
	public String logout(HttpServletRequest request, ModelAndView mv) {
		HttpSession session = request.getSession();
		if (session != null) {
			session.invalidate();
		}
		return "redirect:main.top";
	}

	@RequestMapping("/loginimpl.top")
	public String loginimpl(HttpServletRequest request, ModelAndView mv) {

		System.out.println("enter into loginimpl!");
		String id = request.getParameter("userID").trim();
		String pwd = request.getParameter("userPwd");
		System.out.println(pwd);

		HttpSession session = request.getSession();
//		session.setAttribute("loginId", id);

		UserVO dbuser = null;
		dbuser = userbiz.get(id);
		System.out.println(dbuser);
		try {
			if (dbuser.getUserID() != null) {
				System.out.println(dbuser);
				if (dbuser.getUserPwd().equals(pwd)) {
					System.out.println("dbuser : " + dbuser.getUserID());
					session.setAttribute("loginId", dbuser.getUserID());

					System.out.println("----------- user 로그인--------------");

				} else {
					System.out.println("---------- user pwd 실패-------------");
				}
			}
		} catch (Exception e) {
			System.out.println("sqlexcetion ");
			return "redirect:main.top";
		}

		return "redirect:main.top";
	}

	// profile
	@RequestMapping("/profile.top")
	public ModelAndView profile(ModelAndView mv, HttpServletRequest request) {

		System.out.println("profile");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("loginId");
		System.out.println(id);
		UserVO user = null;
		user = userbiz.get(id);
		System.out.println("profile" + user);
		mv.addObject("duser", user);
		mv.addObject("center", "../user/profile");
		mv.setViewName("main/main");

		return mv;
	}

	@RequestMapping(value = "/update.top", produces = "text/plain;charset=UTF-8")
	public String updateimpl(HttpServletRequest request, HttpServletResponse res) {

		String userName = request.getParameter("userName");
		String userAdd = request.getParameter("userAdd");
		String userPhone = request.getParameter("userPhone");
		String userMail = request.getParameter("userMail");
		String userDate = request.getParameter("userDate");

		try {

			UserVO user = new UserVO(userName, userAdd, userPhone, userMail, userDate);
			userbiz.modify(user);

			// System.out.println("update" + ing);
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println("????????????");

		}

		res.setContentType("text/html; charset=UTF-8");

		return "redirect:profile.top";

	}

}
