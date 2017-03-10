package com.lucifer.controller.web;

import com.lucifer.model.hfc.Member;
import com.lucifer.service.hfc.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by liufx on 17/3/10.
 */
@Controller
@RequestMapping("/u-center")
public class WebUCenterController {

    @Resource
    private MemberService memberService;

    @RequestMapping(value="/index",method = RequestMethod.GET)
    public String upInfoInput(HttpServletRequest request, @CookieValue(required = false) String token) {
        Member member = memberService.getMemberByToken(token);
        request.setAttribute("member",member);
        return "/web/u-center/up-info";
    }
}