package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.MemberDao;
import com.lucifer.model.AccessToken;
import com.lucifer.model.hfc.Member;
import com.lucifer.utils.Result;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;

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
    public Result updateMember(String token, Member member) throws IOException {
        Long userId = memberDao.getMemberIdByToken(token);
        if (null == userId) {
            Result.fail("can not find userId by token: "+token);
        }
        member.setId(userId);
        Result result = this.updateNick(member);
        if (!result.isOk()) {
            return result;
        }
        memberDao.updateMemberInfo(member);
        return Result.ok();
    }

    public Result updateNick(Member member) throws IOException {
        Member dbMember = memberDao.getMemberById(member.getId());



        if (member.getNickName().equals(dbMember.getNickName())) {
            return Result.ok();
        }

        if (memberDao.isNickExist(member.getNickName())) {
            return Result.fail("昵称已被其他人占用");
        }
//        JSONObject jsonObject = sensitiveWordFilter.checkWord(member.getNickName());
//        if (jsonObject.getBoolean("contain")) {
//            String message = "含有敏感词: "+jsonObject.getJSONArray("keywords");
//            return Result.fail(message);
//        }

        memberDao.updateMemberNick(member);
        return Result.ok();
    }
}
