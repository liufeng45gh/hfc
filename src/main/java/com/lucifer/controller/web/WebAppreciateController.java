package com.lucifer.controller.web;

import com.lucifer.dao.hfc.AppreciateDao;
import com.lucifer.model.hfc.Appreciate;
import com.lucifer.model.hfc.AppreciateCategory;
import com.lucifer.utils.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

        if (null != categoryId) {
            AppreciateCategory appreciateCategory = appreciateDao.getAppreciateCategory(categoryId);
            request.setAttribute("appreciateCategory",appreciateCategory);
        }


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
    public List<Map> jsonList(HttpServletRequest request,
                       @RequestParam(value = "categoryId",required=false,defaultValue="") Long categoryId,
                       @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Appreciate> appreciateList = appreciateDao.appreciateList(null,categoryId,offset,pageSize);
        List<Map> resultList = new ArrayList<>();
        for (Appreciate appreciate: appreciateList) {
            Map entityMap = new HashMap<>();
            entityMap.put("id",appreciate.getId());
            entityMap.put("pinHtml",appreciate.pinHtml());
            resultList.add(entityMap);
        }

        //request.setAttribute("appreciateList",appreciateList);
        return resultList;

    }

    @RequestMapping(value="/{id}/detail",method = RequestMethod.GET)
    public String detail(HttpServletRequest request,@PathVariable Long id){
        Appreciate appreciate = appreciateDao.getAppreciate(id);
        request.setAttribute("entity",appreciate);
        return "/web/appreciate/detail";
    }
}
