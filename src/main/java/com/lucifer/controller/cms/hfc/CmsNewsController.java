package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.NewsDao;
import com.lucifer.model.hfc.News;
import com.lucifer.model.hfc.NewsCategory;
import com.lucifer.utils.Constant;
import com.lucifer.utils.DateUtils;
import com.lucifer.utils.PageUtil;
import com.lucifer.utils.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/1/15.
 */
@Controller
@RequestMapping("/cms")
public class CmsNewsController {

    @Resource
    private NewsDao newsDao;

    @RequestMapping(value="/news/list",method = RequestMethod.GET)
    public String newsList(HttpServletRequest request,@RequestParam(value = "title",required=false,defaultValue="") String title,
                            @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<News> newsList = newsDao.cmsNewsList(title,offset,pageSize);
        request.setAttribute("newsList",newsList);

        Integer matchRecordCount=newsDao.matchRecordCount(title);

        Integer totalPageCount=PageUtil.getTotalPageCount(matchRecordCount, pageSize);

        PageUtil pageUtil = new PageUtil(request);
        String pageDiv = pageUtil.willPaginate(totalPageCount,  "pages_bar",new String []{"page","msg"});
        request.setAttribute("pageDiv",pageDiv);
        request.setAttribute("title",title);
        return "/cms/news/list";
    }

    @RequestMapping(value="/news/add",method = RequestMethod.GET)
    public String newsAddInput(HttpServletRequest request){
        List<NewsCategory> newsCategoryList = newsDao.cmsNewsCategoryList();
        request.setAttribute("newsCategoryList",newsCategoryList);
        Date publishAt = DateUtils.now();
        request.setAttribute("publishAt",publishAt);
        return "/cms/news/add";
    }

    @RequestMapping(value="/news/add",method = RequestMethod.POST)
    public String newsAddSubmit(News news){
        newsDao.insertNews(news);
        return "redirect:/cms/news/add";
    }

    @RequestMapping(value="/news/category/list",method = RequestMethod.GET)
    public String categoryList(HttpServletRequest request){
        List<NewsCategory> newsCategoryList = newsDao.cmsNewsCategoryList();
        request.setAttribute("newsCategoryList",newsCategoryList);
        return "/cms/news/category_list";
    }

    @RequestMapping(value="/news/category/list.json",method = RequestMethod.GET)
    @ResponseBody
    public List<NewsCategory>  categoryListForJSON(HttpServletRequest request){
        List<NewsCategory> newsCategoryList = newsDao.cmsNewsCategoryList();
        return newsCategoryList;
    }

    @RequestMapping(value="/news/category/add",method = RequestMethod.POST)
    public String categoryAdd(NewsCategory newsCategory) {
        newsDao.addNewsCategory(newsCategory);
        return "redirect:/cms/news/category/list";
    }

    @RequestMapping(value="/news/category/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result newsCategoryDelete(Long id) {
        newsDao.deleteNewsCategory(id);
        return Result.ok();
    }

    @RequestMapping(value="/news/category/{id}/update",method = RequestMethod.GET)
    public String newsCategoryUpdateInput(@PathVariable Long id,HttpServletRequest request) {
        NewsCategory newsCategory = newsDao.getNewsCategory(id);
        request.setAttribute("newsCategory",newsCategory);
        return "/cms/news/category_update";
    }

    @RequestMapping(value="/news/category/update",method = RequestMethod.POST)
    @ResponseBody
    public Result newsCategoryUpdateSubmit(NewsCategory newsCategory){
        newsDao.newsCategoryUpdate(newsCategory);
        return Result.ok();
    }

}
