package com.mall.join.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.join.service.JoinService;
import com.mall.table.vo.UserInfoVO;

@Controller
public class JoinController {
@Autowired
JoinService service;
		@RequestMapping("/join")
		public String join() throws Exception {
			return "join";
		}
		@RequestMapping("/joinProcess")
		@ResponseBody
		public int joinProcess(@ModelAttribute UserInfoVO vo) throws Exception{
			int c = service.insertJoin(vo); 
			return c;
			
			/*MessageVO msgvo = new MessageVO();
			
			
			
			String pwd = AesUtil.aesEncode(vo.getUserPwd());
			System.out.println(pwd);
			
			vo = service.insertJoin(vo);
			
			if(vo!=null) {	//등록 아이디일 경우
				
				if(vo.getUserPwd().equals(pwd)) {  //동일한 패스워드일 경우.
					//세션저장
					HttpSession session = request.getSession();
					 session.setAttribute("MallUser", vo);
					msgvo.setResult(true);
					
				}else {	//패스워드가 동일하지 않을 경우
					msgvo.setResult(false);
					msgvo.setMsg("패스워드가 일치하지 않습니다.");
				}
			}else {  //등록 아이디가 아닐경우
				msgvo.setResult(false);
				msgvo.setMsg("미등록 회원아이디 입니다.");
			}
			return msgvo;*/
		}
}
