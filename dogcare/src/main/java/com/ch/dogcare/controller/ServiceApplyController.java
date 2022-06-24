package com.ch.dogcare.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.dogcare.model.Address;
import com.ch.dogcare.model.Dog;
import com.ch.dogcare.model.Member;
import com.ch.dogcare.model.ServiceApply;
import com.ch.dogcare.service.AddressService;
import com.ch.dogcare.service.DogService;
import com.ch.dogcare.service.MemberService;
import com.ch.dogcare.service.ServiceApplySerivce;

@Controller
public class ServiceApplyController {
	@Autowired
	private ServiceApplySerivce sas;
	@Autowired
	private MemberService ms;
	@Autowired
	private DogService ds;
	@Autowired
	private AddressService as;
	
	@RequestMapping("visitCare")
	public String visitCare(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		String S_type = "방문";
		List<ServiceApply> list = sas.list(S_type);

		model.addAttribute("list", list);
		if (M_id == null) {
			return "/service/visitCare";
		}
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		return "/service/visitCare";
	}
	
	@RequestMapping("walkCare")
	public String walkCare(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		String S_type = "산책";
		List<ServiceApply> list = sas.list(S_type);

		model.addAttribute("list", list);
		if (M_id == null) {
			return "/service/walkCare";
		}
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		return "/service/walkCare";
	}

	@RequestMapping("pickUpCare")
	public String pickUpCare(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		String S_type = "픽업";
		List<ServiceApply> list = sas.list(S_type);

		model.addAttribute("list", list);
		if (M_id == null) {
			return "/service/pickUpCare";
		}
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		return "/service/pickUpCare";
	}
	
	@RequestMapping("walkServiceForm")
	public String walkServiceForm(int D_num, HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Dog dog = ds.select(D_num);
		Member member = ms.IDselect(M_id);
		
		model.addAttribute("dog", dog);
		model.addAttribute("member", member);
		return "/service/walkServiceForm";
	}
	
	@RequestMapping("apply")
	public String walkService(String M_id, int D_num, ServiceApply serviceApply, HttpSession session, Model model) {
		int result = 0;
		Address address = as.select(M_id);
		Dog dog = ds.select(D_num);
		serviceApply.setM_address(address.getM_address());
		serviceApply.setD_name(dog.getD_name());
		serviceApply.setD_photo(dog.getD_photo());
		
		result = sas.Winsert(serviceApply);
		
		model.addAttribute("result", result);
		return "/service/apply";
	}
	
	@RequestMapping("pickUpServiceForm")
	public String pickUpServiceForm(int D_num, HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Dog dog = ds.select(D_num);
		Member member = ms.IDselect(M_id);
		
		model.addAttribute("dog", dog);
		model.addAttribute("member", member);
		return "/service/pickUpServiceForm";
	}
	
	@RequestMapping("viewCare")
	public String viewCare(int S_num, HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		if (M_id != null) {
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		}
		
		ServiceApply serviceApply = sas.select(S_num);
		Dog dog = ds.select(serviceApply.getD_num());
		
		
		model.addAttribute("dog", dog);
		model.addAttribute("serviceApply", serviceApply);
		return "/service/viewCare";
	}
	
	@RequestMapping("PviewCare")
	public String PviewCare(int S_num, HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		if (M_id != null) {
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		}
		
		ServiceApply serviceApply = sas.select(S_num);
		Dog dog = ds.select(serviceApply.getD_num());
		
		
		model.addAttribute("dog", dog);
		model.addAttribute("serviceApply", serviceApply);
		return "/service/PviewCare";
	}


}
