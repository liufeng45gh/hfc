package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.IndexDao;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.service.hfc.IndexService;
import com.lucifer.utils.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by liufx on 2017/5/25.
 */

@Controller
@RequestMapping("/cms/index")
public class CmsCompanyIndexController {

    @Resource
    private IndexDao indexDao;

    private Logger logger = LoggerFactory.getLogger(this.getClass());



    @Resource
    private IndexService indexService;
    
    //------------------------------------------------------------------------------------------------------------------//
    //下面是艺术家

    @RequestMapping(value="/recommend/company-list",method = RequestMethod.GET)
    public String recommendArtistList(HttpServletRequest request){
        List<IndexRecommend> indexRecommendList = indexService.companyIndexRecommendList();
        request.setAttribute("indexRecommendList",indexRecommendList);
        return "/cms/index/company_list";
    }

    @RequestMapping(value="/recommend/company-add",method = RequestMethod.POST)
    @ResponseBody
    public Result addCompanyIndexRecommendSubmit(IndexRecommend indexRecommend){
        indexDao.addCompanyIndexRecommend(indexRecommend);
        return Result.ok();
    }

    @RequestMapping(value="/recommend/{id}/company-update",method = RequestMethod.GET)
    public String updateCompanyIndexRecommend(@PathVariable Long id, HttpServletRequest request){
        IndexRecommend indexRecommend = indexDao.getCompanyIndexRecommend(id);
        request.setAttribute("entity",indexRecommend);
        return "/cms/index/company_update";
    }

    @RequestMapping(value="/recommend/company-update",method = RequestMethod.POST)
    @ResponseBody
    public Result updateCompanyIndexRecommendSubmit(IndexRecommend indexRecommend){
        this.indexDao.updateCompanyIndexRecommend(indexRecommend);
        return Result.ok();
    }

    @RequestMapping(value="/recommend/{id}/company-delete",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteCompanyIndexRecommend(@PathVariable Long id){
        indexDao.deleteCompanyIndexRecommend(id);
        return Result.ok();
    }
}
