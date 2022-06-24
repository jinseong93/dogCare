package com.ch.dogcare.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.dogcare.model.Address;
import com.ch.dogcare.model.Dog;
import com.ch.dogcare.model.Member;
import com.ch.dogcare.service.AddressService;
import com.ch.dogcare.service.DogService;
import com.ch.dogcare.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private AddressService as;
	@Autowired
	private DogService ds;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("signInForm")
	public String signInForm() {	
		return "/member/signInForm";
	}
	
	@RequestMapping("signUpForm")
	public String signUpForm() {
		return "/member/signUpForm";
	}
	
	@RequestMapping("Klogin.do")
	public String Klogin(Member member, HttpSession session, Model model) {
		int result = 0;
		// 카카오로 받아오는 성별 한글로 바꾸기
		if (member.getM_gender().equals("male")) {
			String M_gender = member.getM_gender().replace("male", "남자");
			member.setM_gender(M_gender);
		} else {
			String M_gender = member.getM_gender().replace("female", "여자");
			member.setM_gender(M_gender);
		}
		// DB저장
		Member member2 = ms.IDselect(member.getM_id());	
		if (member2 == null) {
			member2 = ms.NNselect(member.getM_nickname());
			// 중복 닉네임이 있다면 닉네임+#랜덤숫자 로 바꿔서 DB저장
			if (member2 != null) {
				int num = (int)(Math.random()*100);
				String nick = member.getM_nickname()+"#"+num;
				member.setM_nickname(nick);
				result = ms.Kinsert(member);  //  닉네임 수정 후 회원가입 성공				
			} else {
				// 중복 이메일x 닉네임x 바로 DB로 저장
				result = ms.Kinsert(member); // 바로 회원가입 
			}
			
		} else if (member2 != null) {
				if(!member2.getM_nickname().equals(member.getM_nickname()) && member2.getM_password().equals("1q2w3e") && !member.getM_nickname().contains("#")) {
					member2 = ms.NNselect(member.getM_nickname());
					if (member2 != null) {
						// 카카오톡 닉네임이 변경되에 수정될때 중복 닉네임이 있는 경우 닉네임에 #숫자로 저장.
						int num = (int)(Math.random()*100);
						String nick = member.getM_nickname()+"#"+num;
						member.setM_nickname(nick);
						result = ms.Nupdate(member);
					} else {
						// 중복 닉네임이 없어 바로 수정
						result = ms.Nupdate(member);
					}
				} else if (!member2.getM_password().equals("1q2w3e")){
					result = -1; // 일반 회원가입으로 가입한 이메일과 중복됨 / 카카오에 사용중인 이메일로 일반 회원가입 이력이 있음.
			}
		}
		

		session.setAttribute("M_id", member.getM_id());
		model.addAttribute("result", result);
		
		return "/member/Klogin";
	}
	
	@RequestMapping("signIn")
	public String signIn(String M_id, String M_password, HttpSession session, Model model) {
		Member member = ms.IDselect(M_id);
		int result;
		if (member ==  null) {
			result = 0; // 없는 아이디
		} else if (passwordEncoder.matches(M_password, member.getM_password())) {
			session.setAttribute("M_id", member.getM_id());
			result = 1; // 아이디와 암호가 일치
		} else  if (member.getM_password().equals("1q2w3e")) {
			result = -2; // 카카오아이디. 카카오 로그인 요청
		} else {
			result = -1;
		}
		model.addAttribute("result", result);
		return "/member/signIn";
	}
	
	@RequestMapping("signUp")
	public String signUp(Member member, HttpSession session, Model model) {
		int result = 0;
		Member member2 = ms.IDselect(member.getM_id());
		if (member2 == null) {
			String encPassord = passwordEncoder.encode(member.getM_password());
			member.setM_password(encPassord);
			result = ms.insert(member);
		} else {
			result = -1;  // 아아디 중복
		}
		session.setAttribute("M_id", member.getM_id());
		model.addAttribute("result", result);
		return "/member/signUp";
	}
	
	@RequestMapping("signOut")
	public String signOut(HttpSession session) {
		session.invalidate();
		return "/main/main";
	}
	
	@RequestMapping(value = "idChk", produces = "text/html;charset=utf-8")
	@ResponseBody  // jsp를 통하지 않고 직접 문자를 전달해
	public String idChk1(String M_id) {
		String msg = "";
		Member member = ms.IDselect(M_id);
		if (member == null) msg = "사용 가능한 아이디 입니다.";
		else msg = "중복된 아이디 입니다.";
		return msg;
	}
	
	@RequestMapping(value = "nickChk", produces = "text/html;charset=utf-8")
	@ResponseBody  // jsp를 통하지 않고 직접 문자를 전달해
	public String nickChk(String M_nickname) {
		String msg = "";
		Member member = ms.NNselect(M_nickname);
		if (member == null) msg = "사용 가능한 닉네임 입니다.";
		else msg = "중복된 닉네임 입니다.";
		return msg;
	}
	
	@RequestMapping("myPage")
	public String myPage(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		Address address = as.select(M_id);
		List<Dog> list = ds.IDdogList(M_id);
		
		model.addAttribute("list", list);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		return "/member/myPage";
	}
	
	@RequestMapping("addressForm")
	public String addressForm(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		model.addAttribute("member", member);
		return "/member/addressForm";
	}
	
	 @RequestMapping("address") 
		 public String address(String roadAddress, HttpSession session, Model model) {  
		 Address address = new Address();
		 int result = 0; 
		 String M_id = (String)session.getAttribute("M_id");
		 String address2 = roadAddress;
		 Address address3= as.select(M_id);
		 if (address3 == null) {
			 address.setM_id(M_id);
			 address.setM_address(address2); 
			 result = as.insert(address);
			 
			 model.addAttribute("result", result); 
			 return "/member/address"; 
		 } else {
			 address.setM_id(M_id);
			 address.setM_address(address2); 
			 result = as.update(address);
			 
			 model.addAttribute("result", result); 
			 return "/member/address"; 
		 }

	}
	 
	 @RequestMapping("MupdateForm")
	 public String MupdateForm(HttpSession session, Model model) {
		 String M_id = (String)session.getAttribute("M_id");
		 Member member = ms.IDselect(M_id);
		 Address address = as.select(M_id);
		 model.addAttribute("member", member);
		 model.addAttribute("address", address);
		 return "/member/MupdateForm";
	 }
	 
	 @RequestMapping("Mupdate")
	 public String Mupdate(Member member, Model model) {
		 int result = 0;
		 result = ms.Mupdate(member);
		 model.addAttribute("result", result);
		 return "/member/Mupdate";
	 }
	 
	 @RequestMapping("MdeleteForm")
	 public String MdeleteForm(HttpSession session, Model model) {
		 String M_id = (String)session.getAttribute("M_id");
		 Member member = ms.IDselect(M_id);
		 Address address = as.select(M_id);
		 List<Dog> list = ds.IDdogList(M_id);
		 model.addAttribute("list", list);
		 model.addAttribute("member", member);
		 model.addAttribute("address", address);
		 return "/member/MdeleteForm";
	 }
	 
	@RequestMapping("Mdelete") 
	public String Mdelete(String M_password, HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		Address address = as.select(M_id);
		int result = 0;
		if (passwordEncoder.matches(M_password, member.getM_password())) {
			if (address != null) {
				result = as.delete(M_id);
				result = ms.delete(M_id);
				session.invalidate();
			} else {
				result = ms.delete(M_id);
				session.invalidate();
			}
		} else {
			result = -1; //암호가 틀림
		}
		model.addAttribute("result", result);
		return "/member/Mdelete";
	}
	
	@RequestMapping("Kdelete")
	public String Kdelete(HttpSession session, Model model) {
		String M_id = (String)session.getAttribute("M_id");
		Member member = ms.IDselect(M_id);
		int result = ms.delete(M_id);
		session.invalidate();
		return "/main/main";
	}
	
	
}





































