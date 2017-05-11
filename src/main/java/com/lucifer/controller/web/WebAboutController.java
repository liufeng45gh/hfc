package com.lucifer.controller.web;

import com.lucifer.dao.hfc.PostDao;
import com.lucifer.model.hfc.Post;
import com.lucifer.service.hfc.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by liufx on 17/3/29.
 */

@Controller
@RequestMapping("/about")
public class WebAboutController {

    @Resource
    private NewsService newsService;

    @Resource
    private PostDao postDao;

    @RequestMapping(value="/company-intro",method = RequestMethod.GET)
    public String companyIntro(HttpServletRequest request){
        newsService.loadNewsRightData(request);

        return "/web/news/company-intro";
    }

    @RequestMapping(value="/management-idea",method = RequestMethod.GET)
    public String managementIdea(HttpServletRequest request){
        newsService.loadNewsRightData(request);

        return "/web/news/management-idea";
    }

    @RequestMapping(value="/company-structure",method = RequestMethod.GET)
    public String companyStructure(HttpServletRequest request){
        newsService.loadNewsRightData(request);

        return "/web/news/company-structure";
    }

    @RequestMapping(value="/recruitment",method = RequestMethod.GET)
    public String recruitment(HttpServletRequest request){

        List<Post> postList = postDao.postList();
        request.setAttribute("postList",postList);
        return "/web/news/recruitment-list";
    }

    @RequestMapping(value="/recruitment/{id}/detail",method = RequestMethod.GET)
    public String recruitmentDetail(HttpServletRequest request,@PathVariable Long id){

        Post post = postDao.getPost(id);
        request.setAttribute("entity",post);
        return "/web/news/recruitment-detail";
    }
}
