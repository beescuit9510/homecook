package kr.or.zipcoock.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	@RequestMapping(value="/mypageReceiptFrm.do")
	public String callReceiptFrm()
	{
		return "zipcoock/mypage/receiptFrm";
	}

	@RequestMapping(value="/mypageMembershipFrm.do")
	public String callMembershipFrm()
	{
		return "zipcoock/mypage/membershipFrm";
	}

	@RequestMapping(value="/mypageQnAFrm.do")
    public String callQnAFrm()
    {
    	return "zipcoock/mypage/qnaFrm";
    }

	@RequestMapping(value="/mypageReveiwFrm.do")
    public String callReveiwFrm()
    {
    	return "zipcoock/mypage/reviewFrm";
    }

	@RequestMapping(value="/mypageLikeFrm.do")
    public String callLikeFrm()
    {
    	return "zipcoock/mypage/likeFrm";
    }

	@RequestMapping(value="/mypageMyInfoFrm.do")
    public String callMyInfoFrm()
    {
    	return "zipcoock/mypage/myinfoFrm";
    }

	@RequestMapping(value="/mypagePwFrm.do")
    public String callPwFrm()
    {
    	return "zipcoock/mypage/pwFrm";
    }

	@RequestMapping(value="/mypageAddrFrm.do")
    public String callAddressFrm()
    {
    	return "zipcoock/mypage/addrFrm";
    }

}
