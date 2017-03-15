package com.lucifer.controller.web;

import com.lucifer.dao.UserDao;
import com.lucifer.dao.hfc.MemberDao;
import com.lucifer.utils.Result;
import com.wordnik.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by liufx on 17/3/15.
 */
@Controller
public class CacheController {

    @Resource
    private MemberDao memberDao;

    @ApiOperation(value = "删除spring user系统缓存")
    @RequestMapping(value="/cache/remove-all-cache",method= RequestMethod.GET)
    @ResponseBody
    public Result removeAllCache(){
        memberDao.removeAllCacheing();
        return Result.ok();
    }
}
