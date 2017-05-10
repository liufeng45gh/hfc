package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.PostDao;
import com.lucifer.model.hfc.Carousel;
import com.lucifer.model.hfc.Post;
import com.lucifer.utils.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by liufx on 2017/5/10.
 */

@Controller
@RequestMapping("/cms/post")
public class CmsPostController {
    
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private PostDao postDao;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String postList(HttpServletRequest request){
        List<Post> postList = postDao.postList();
        request.setAttribute("postList",postList);
        Post post = new Post();
        //carousel.setLogo("/cms/images/logo.png");
        request.setAttribute("entity",post);
        return "/cms/post/list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String postAdd(Post post){
        postDao.insertPost(post);
        return "redirect:/cms/post/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Result deletePost(Long id){
        postDao.deletePost(id);
        return Result.ok();
    }

    @RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
    public String updatePost(@PathVariable Long id, HttpServletRequest request){
        logger.info(" updatePost has been called");
        Post post = postDao.getPost(id);
        request.setAttribute("entity",post);
        return "/cms/post/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public Result updatePostSubmit(Post post){
        postDao.updatePost(post);
        return Result.ok();
    }
}
