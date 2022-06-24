package com.ch.dogcare.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.dogcare.model.Member;
import com.ch.dogcare.service.MemberService;

@Controller
public class MainController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("main")
	public String main(Member member, Model model, HttpSession session) {
		String M_id = (String)session.getAttribute("M_id");
		if (M_id != null && !M_id.equals("")) {
			member = ms.IDselect(M_id);
			model.addAttribute("member", member);
		}
		return "/main/main";
	}
	
	@RequestMapping("QnA")
	public String QnA(Member member, Model model, HttpSession session) {
		String M_id = (String)session.getAttribute("M_id");
		if (M_id != null && !M_id.equals("")) {
			member = ms.IDselect(M_id);
			model.addAttribute("member", member);
		}
		return "/main/QnA";
	}

}