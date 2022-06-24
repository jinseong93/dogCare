package com.ch.dogcare.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.dogcare.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Member IDselect(String M_id) {
		return sst.selectOne("memberns.IDselect", M_id);
	}
	
	@Override
	public Member NNselect(String M_nickname) {
		return sst.selectOne("memberns.NNselect", M_nickname);
	}
	
	@Override
	public int Kinsert(Member member) {
		return sst.insert("memberns.Kinsert", member);
	}

	@Override
	public int insert(Member member) {
		return sst.insert("memberns.insert", member);
	}

	@Override
	public int Nupdate(Member member) {
		return sst.update("memberns.Nupdate", member);
	}

	@Override
	public int Mupdate(Member member) {
		return sst.update("memberns.Mupdate", member);
	}

	@Override
	public int delete(String M_id) {
		return sst.delete("memberns.delete", M_id);
	}
	
}
