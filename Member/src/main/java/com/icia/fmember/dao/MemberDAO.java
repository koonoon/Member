package com.icia.fmember.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.fmember.dto.MemberDTO;

@Repository
public class MemberDAO {

	// dao에서 mapper(DB)로 연결하기 위해서
	@Autowired
	private SqlSessionTemplate sql;
		
	
		public int mJoin(MemberDTO member) {
		System.out.println("[3]DAO : " + member);
		return sql.insert("Member.join", member);
	}


		public List<MemberDTO> mList() {
			System.out.println("[3]DAO");
			return sql.selectList("Member.list");
		}


		public MemberDTO mView(String fId) {
			System.out.println("[3]DAO");
			return sql.selectOne("Member.view", fId);
		}


		public int mDelete(String fId) {
			System.out.println("[3]삭제 DAO : " + fId);
			return sql.delete("Member.delete",fId);
		}


		public int mModify(MemberDTO member) {
			System.out.println("[3]수정DAO : " + member);
			return sql.update("Member.modify",member);
		}


		public String mLogin(MemberDTO member) {
			System.out.println("[3]로그인DAO : " + member);
			return sql.selectOne("Member.login", member);
		}


		

}
