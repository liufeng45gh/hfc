package com.lucifer.controller.web;

import com.lucifer.dao.hfc.AppreciateDao;
import com.lucifer.model.hfc.Appreciate;
import com.lucifer.model.hfc.AppreciateCategory;
import com.lucifer.utils.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by liufx on 17/2/11.
 */
@Controller
@RequestMapping("/appreciate")
public class WebAppreciateController {

    @Resource
    private AppreciateDao appreciateDao;

    @RequestMapping(value="/index",method = RequestMethod.GET)
    public String index(HttpServletRequest request,
                        @RequestParam(value = "categoryId",required=false,defaultValue="") Long categoryId,
                        @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        //List<Appreciate> appreciateList = appreciateDao.appreciateList(null,categoryId,offset,pageSize);
        //request.setAttribute("appreciateList",appreciateList);

        List<AppreciateCategory> appreciateCategoryList =  appreciateDao.appreciateCategoryList();
        request.setAttribute("appreciateCategoryList",appreciateCategoryList);

        return "/web/appreciate/index";
    }

    @RequestMapping(value="/list",method = RequestMethod.GET)
    public String list(HttpServletRequest request,
                       @RequestParam(value = "categoryId",required=false,defaultValue="") Long categoryId,
                       @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Appreciate> appreciateList = appreciateDao.appreciateList(null,categoryId,offset,pageSize);
        request.setAttribute("appreciateList",appreciateList);
        return "/web/appreciate/list";

    }

    @RequestMapping(value="/list.json",method = RequestMethod.GET)
    @ResponseBody
    public List<Appreciate> jsonList(HttpServletRequest request,
                       @RequestParam(value = "categoryId",required=false,defaultValue="") Long categoryId,
                       @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Appreciate> appreciateList = appreciateDao.appreciateList(null,categoryId,offset,pageSize);
        //request.setAttribute("appreciateList",appreciateList);
        return appreciateList;

    }

    @RequestMapping(value="/{id}/detail",method = RequestMethod.GET)
    public String detail(HttpServletRequest request,@PathVariable Long id){
        Appreciate appreciate = appreciateDao.getAppreciate(id);
        request.setAttribute("entity",appreciate);
        return "/web/appreciate/detail";
    }
}
