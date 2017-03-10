package com.lucifer.controller.web;

import com.lucifer.model.hfc.Member;
import com.lucifer.service.hfc.MemberService;
import com.lucifer.utils.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value="/info/update",method = RequestMethod.POST)
    @ResponseBody
    public Result upInfoSubmit(HttpServletRequest request,@CookieValue(required = false) String token,Member member){
        return Result.ok();
    }
}
