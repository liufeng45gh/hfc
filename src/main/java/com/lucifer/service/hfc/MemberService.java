package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.MemberDao;
import com.lucifer.model.AccessToken;
import com.lucifer.model.hfc.Member;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by liufx on 17/1/16.
 */
@Component
public class MemberService {

    @Resource
    private MemberDao memberDao;

    public Member getMemberByToken(String token){
        Long userId = memberDao.getMemberIdByToken(token);
        if (null == userId) {
            return null;
        }
        Member member = memberDao.getMemberById(userId);
        return member;
    }
}
