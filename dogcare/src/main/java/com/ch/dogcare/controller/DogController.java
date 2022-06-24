package com.ch.dogcare.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.dogcare.model.Dog;
import com.ch.dogcare.model.Member;
import com.ch.dogcare.model.ServiceApply;
import com.ch.dogcare.service.DogService;
import com.ch.dogcare.service.MemberService;
import com.ch.dogcare.service.ServiceApplyServiceImpl;

@Controller
public class DogController {
	@Autowired
	private DogService ds;
	@Autowired
	private MemberService ms;
	@Autowired
	private ServiceApplyServiceImpl sas;
	
	@RequestMapping("dogUpForm")
	public String dogUpForm(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		return "/dog/dogUpForm";
	}
	
	@RequestMapping("dogUp")
	public String dogUp(Dog dog, HttpSession session, Model model) throws IOException {
		int result = 0;
		String M_id = (String)session.getAttribute("M_id");
		dog.setM_id(M_id);
		
		String D_photo = dog.getFile().getOriginalFilename();
		dog.setD_photo(D_photo);
		String real = session.getServletContext().getRealPath("/resources/images/dog");
		FileOutputStream fos = new FileOutputStream(new File(real+"/"+D_photo));
		fos.write(dog.getFile().getBytes());
		fos.close();
		
		result = ds.insert(dog);
		model.addAttribute("result", result);

		return "/dog/dogUp";
	}
	
	@RequestMapping("myDog")
	public String myDog(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		if (M_id == null) {
			return "chk";
		}
		List<Dog> list = ds.IDdogList(M_id);
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		model.addAttribute("list", list);
		return "/dog/myDog";
	}
	
	@RequestMapping("myDogCare")
	public String myDogCare(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		List<ServiceApply> list = sas.IDlist(M_id);
		
		model.addAttribute("member", member);
		model.addAttribute("list", list);
		return "/member/myDogCare";
	}
}
