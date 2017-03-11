package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.MemberDao;
import com.lucifer.model.AccessToken;
import com.lucifer.model.hfc.Member;
import com.lucifer.utils.Md5Utils;
import com.lucifer.utils.Result;
import org.json.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CookieValue;

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

    public void updateMemberAvatar(String token,String avatar) {
        Long userId = memberDao.getMemberIdByToken(token);
        if (null == userId) {
            Result.fail("can not find userId by token: "+token);
        }
        Member member = new Member();
        member.setAvatar(avatar);
        member.setId(userId);
        memberDao.updateMemberAvatar(member);
    }

    public Result updatePassWord(@CookieValue(required = false) String token, String oldPass, String newPass, String repeatPass){
        Member dbMember = this.getMemberByToken(token);
        if (null == dbMember) {
            return Result.fail("您未登陆");
        }

        String md5Password = Md5Utils.md5(Md5Utils.md5(oldPass)+dbMember.getSalt());
        if (!md5Password.equals(dbMember.getPassword())) {
            return Result.fail("原密码错误");
        }
        if (null == newPass) {
            return Result.fail("新密码不能为空");
        }
        if (newPass.length() < 6) {
            return Result.fail("新密码长度必须6位以上");
        }

        if (null == repeatPass) {
            return Result.fail("重复密码不能为空");
        }

        if (repeatPass.length() < 6) {
            return Result.fail("重复密码长度必须6位以上");
        }

        if (!newPass.equals(repeatPass)) {
            return Result.fail("两次密码不一致");
        }

        String md5NewPassword = Md5Utils.md5(Md5Utils.md5(newPass)+dbMember.getSalt());
        dbMember.setPassword(md5NewPassword);
        memberDao.updateMemberPassword(dbMember);
        return Result.ok();
    }
}
