package top.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import top.frame.Biz;
import top.vo.RequestVO;

@Controller
public class RequestController {
	@Resource(name = "requestbiz")
	Biz<String, RequestVO> requestbiz;

	SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	Date time = new Date();

	@RequestMapping(value = "/requestinput.top", produces = "text/plain;charset=UTF-8")
	public String signupimpl(HttpServletRequest request, RequestVO req, HttpServletResponse res) {
		System.out.println("enter into register.top");

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("loginId");
		System.out.println("userid: " + userID);
		String rnumber = request.getParameter("rnumber").trim();
		System.out.println("number: " + rnumber);
		String site = request.getParameter("site").trim();
		System.out.println("site: " + site);
		String jod = request.getParameter("jod").trim();
		System.out.println("jod: " + jod);
		String qualify = request.getParameter("qualify").trim();
		System.out.println("qualify: " + qualify);
		String period = request.getParameter("period").trim();
		System.out.println("period: " + period);
		String form = request.getParameter("form").trim();
		System.out.println("form: " + form);
		String term = request.getParameter("term").trim();
		System.out.println("term: " + term);
		String wperiod = request.getParameter("wperiod").trim();
		System.out.println("wperiod: " + wperiod);
		String jstart = request.getParameter("jstart").trim();
		System.out.println("jstart: " + jstart);
		String pay = request.getParameter("pay").trim();
		System.out.println("pay: " + pay);
		String area = request.getParameter("area").trim();
		System.out.println("area:" + area);

		if (userID != null) {
			try {
				req = new RequestVO(userID, rnumber, site, jod, qualify, period, form, term, wperiod, jstart, pay,
						area);
				System.out.println(req);
				requestbiz.register(req);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error register request");
			}
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/main");
		return "redirect:main.top";
	}

	@RequestMapping("/requestList.top")
	public ModelAndView showIngredientList(ModelAndView mv, HttpServletResponse res, HttpServletRequest request) {
		System.out.println("requestlist");
		HttpSession session = request.getSession();

		String userID = (String) session.getAttribute("loginId");

		System.out.println(userID);

		for (RequestVO i : requestbiz.get()) {
			System.out.println(i);
		}

		mv.addObject("loginId", userID);
		mv.addObject("requestListData", requestbiz.get());
		mv.addObject("center", "../list/requestList");
		mv.setViewName("main/main");
		res.setContentType("text/html; charset=UTF-8");

		return mv;
	}

	@RequestMapping(value = "/adjust.top")
	@ResponseBody
	public RequestVO AjaxView(@RequestParam("requestNO") int requestNO, HttpServletRequest request,
			HttpServletResponse res) throws UnsupportedEncodingException {

		System.out.println("AjaxView adjust into" + requestNO);
		RequestVO ingList = requestbiz.oget(requestNO);
		// System.out.println(ingList);
		res.setContentType("text/html;charset=utf-8");
		return ingList;
	}

	@RequestMapping("/myrequestlist.top")
	public ModelAndView myrequestlist(ModelAndView mv, HttpServletResponse res, HttpServletRequest request) {
		System.out.println("myrequestlist");
		HttpSession session = request.getSession();

		String userID = (String) session.getAttribute("loginId");

		System.out.println(userID);

		for (RequestVO i : requestbiz.oget(userID)) {
			System.out.println(i);

		}

		mv.addObject("loginId", userID);
		mv.addObject("myrequestListData", requestbiz.oget(userID));
		mv.addObject("center", "../list/estimate");
		mv.setViewName("main/main");
		res.setContentType("text/html; charset=UTF-8");

		return mv;
	}

}
