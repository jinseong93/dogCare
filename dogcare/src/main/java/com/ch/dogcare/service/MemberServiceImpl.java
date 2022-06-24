package com.ch.dogcare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.dogcare.dao.MemberDao;
import com.ch.dogcare.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;


	@Override
	public Member IDselect(String M_id) {
		return md.IDselect(M_id);
	}

	@Override
	public int Nupdate(Member member) {
		return md.Nupdate(member);
	}

	@Override
	public int Kinsert(Member member) {
		return md.Kinsert(member);
	}

	@Override
	public Member NNselect(String M_nickname) {
		return md.NNselect(M_nickname);
	}

	@Override
	public int insert(Member member) {
		return md.insert(member);

	}

	@Override
	public int Mupdate(Member member) {
		return md.Mupdate(member);
	}

	@Override
	public int delete(String M_id) {
		return md.delete(M_id);
	}
}