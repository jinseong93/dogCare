package com.ch.dogcare.dao;

import com.ch.dogcare.model.Member;

public interface MemberDao {

	Member IDselect(String M_id);

	int Nupdate(Member member);

	int Kinsert(Member member);

	Member NNselect(String M_nickname);

	int insert(Member member);

	int Mupdate(Member member);

	int delete(String M_id);

}
