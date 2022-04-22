package com.icia.fmember.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.fmember.dao.MemberDAO;
import com.icia.fmember.dto.MemberDTO;

@Service
public class MemberService {
	
	// ModelAndView를 사용하기 위해 mav 객체 생성
		private ModelAndView mav = new ModelAndView();
		
	// Controller와 DAO를 연결
		@Autowired
		private MemberDAO dao;

	// 로그인을 사용하기 위한 session 연결
	@Autowired
	private HttpSession session;
		
	public ModelAndView mJoin(MemberDTO member) {
		
		int result = dao.mJoin(member);
		
		if(result>0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("joinForm");
		}
		return mav;
	}

	public ModelAndView mList() {
			System.out.println("[2]service");
			
			// 메소드를 만들면 해줘야 하는 것
			// (1) 메소드 타입의 return값 설정
			List<MemberDTO> memberList = dao.mList();
			
			System.out.println("[4]service " + memberList);
			
			mav.setViewName("memList");
			mav.addObject("memberList", memberList);
			// mav.addObject("jsp에서 사용할 이름", jsp에서 사용할 데이터);
			
			return mav;
		}

	public ModelAndView mView(String fId) {
		System.out.println("[2]service : " + fId);
		
		MemberDTO member = dao.mView(fId);
		
		System.out.println("[4]service : " + member);
		
		mav.setViewName("memView");
		mav.addObject("view", member);
		
		// memView.jsp에서 member의 값을 view라는 이름으로 사용하겠다.
		
		return mav;
	}

	public ModelAndView mDelete(String fId) {
		int result = dao.mDelete(fId);
		
		System.out.println("[4]삭제 service : " + result);
		
		if(result>0) {
			// 회원삭제성공 result=1
			mav.setViewName("redirect:/mList");
		} else {
			// 회원삭제실패 result =0
			mav.setViewName("index");
		}
		
		return mav;
	}

	public ModelAndView mModiForm(String fId) {
		
		MemberDTO member = dao.mView(fId);
		
		mav.setViewName("modiForm");
		mav.addObject("modi", member);
		
		return mav;
	}
	
	public ModelAndView mModify(MemberDTO member) {
		System.out.println("[2]수정service : " + member);
		
		// DB에 잘 저장되었는지 확인하기 위한, 회원수정이 성공했는지 확인하기 위한 변수 result생성
		int result = dao.mModify(member);
		
		System.out.println("[4]수정service : " + result);
		
		if(result>0) {
			// 회원수정성공 result=1
			mav.setViewName("redirect:/memberView?fId="+member.getfId());
		} else {
			// 회원수정실패 result =0
			mav.setViewName("redirect:/mList");
		}
		
		return mav;
	}

	public ModelAndView mLogin(MemberDTO member) {
		System.out.println("[2]로그인service : " + member);
		String loginId = dao.mLogin(member);
		
		System.out.println("[4]로그인service : " + loginId);
		
		if(loginId !=null) {
			session.setAttribute("loginId", loginId);
			mav.setViewName("index");
		} else {
			mav.setViewName("M_Login");
		}
		
		return mav;
	}
		
}
