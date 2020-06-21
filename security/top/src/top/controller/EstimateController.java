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
import top.vo.EstimateVO;
import top.vo.RequestVO;

@Controller
public class EstimateController {

	@Resource(name = "estimatebiz")
	Biz<String, EstimateVO> estimatebiz;
	SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

	Date time = new Date();

	@RequestMapping(value = "/estimate.top")
	@ResponseBody
	public ModelAndView estajaxview(ModelAndView mv, int requestNO, EstimateVO est, HttpServletRequest req,
			HttpServletResponse res, HttpServletRequest request) {
		System.out.println("into estimate.top!" + requestNO);
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("loginId");
		System.out.println("userID:" + userID);
		est = new EstimateVO(requestNO);
		for (EstimateVO i : estimatebiz.estget(est)) {
			System.out.println(i);
		}

		mv.addObject("loginId", userID);
		mv.addObject("getestimateListData", estimatebiz.estget(est));
		mv.addObject("center", "../list/getestimate");
		mv.setViewName("main/main");
		res.setContentType("text/html; charset=UTF-8");

		return mv;
	}

	@RequestMapping(value = "/insertestimate.top", produces = "text/plain;charset=UTF-8")
	public String signupimpl(HttpServletRequest request, EstimateVO estinput, HttpServletResponse res) {
		System.out.println("enter into register.top");

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("loginId");
		System.out.println("userid: " + userID);
		int requestNO = Integer.parseInt(request.getParameter("requestNO").trim());
		System.out.println("requestNO: " + requestNO);
		String ernumber = request.getParameter("ernumber").trim();
		System.out.println("ernumber: " + ernumber);
		String esite = request.getParameter("esite").trim();
		System.out.println("esite: " + esite);
		String ejod = request.getParameter("ejod").trim();
		System.out.println("ejod: " + ejod);
		String equalify = request.getParameter("equalify").trim();
		System.out.println("qualify: " + equalify);
		String eperiod = request.getParameter("eperiod").trim();
		System.out.println("eperiod: " + eperiod);
		String eform = request.getParameter("eform").trim();
		System.out.println("eform: " + eform);
		String eterm = request.getParameter("eterm").trim();
		System.out.println("eterm: " + eterm);
		String ewperiod = request.getParameter("ewperiod").trim();
		System.out.println("ewperiod: " + ewperiod);
		String ejstart = request.getParameter("ejstart").trim();
		System.out.println("ejstart: " + ejstart);
		String epay = request.getParameter("epay").trim();
		System.out.println("epay: " + epay);
		String earea = request.getParameter("earea").trim();
		System.out.println("earea:" + earea);

		if (userID != null) {
			try {
				estinput = new EstimateVO(userID, requestNO, ernumber, esite, ejod, equalify, eperiod, eform, eterm,
						ewperiod, ejstart, epay, earea);
				System.out.println(estinput);
				estimatebiz.register(estinput);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error register request");
			}
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/main");
		return "redirect:main.top";
	}

	@RequestMapping(value = "/estimatedata.top")
	@ResponseBody
	public EstimateVO AjaxView(@RequestParam("estimateNO") int estimateNO,@RequestParam("userID") String userID,
			HttpServletResponse res, EstimateVO est) throws UnsupportedEncodingException {
		System.out.println("AjaxView adjust into" + estimateNO+userID );

		est = new EstimateVO(estimateNO,userID);
		EstimateVO estlist = estimatebiz.dataget(est);
		res.setContentType("text/html;charset=utf-8");
		return estlist;
	}
	

}
