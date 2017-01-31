package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.CarouseDao;
import com.lucifer.dao.hfc.IndexDao;
import com.lucifer.model.hfc.Carousel;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.model.hfc.NewsRecommend;
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
 * Created by fx on 2017/1/31.
 */
@Controller
@RequestMapping("/cms/index")
public class CmsIndexController {

    @Resource
    private CarouseDao carouseDao;

    @Resource
    private IndexDao indexDao;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/carousel/list", method = RequestMethod.GET)
    public String carouselList(HttpServletRequest request){
        List<Carousel> carouselList = carouseDao.carouselList();
        request.setAttribute("carouselList",carouselList);
        Carousel carousel = new Carousel();
        carousel.setLogo("/cms/images/logo.png");
        request.setAttribute("entity",carousel);
        return "/cms/index/carousel_list";
    }

    @RequestMapping(value = "/carousel/add", method = RequestMethod.POST)
    public String carouseAdd(Carousel carousel){
        carouseDao.insertCarousel(carousel);
        return "redirect:/cms/index/carousel/list";
    }

    @RequestMapping(value = "/carousel/delete", method = RequestMethod.POST)
    @ResponseBody
    public Result deleteCarousel(Long id){
        carouseDao.deleteCarousel(id);
        return Result.ok();
    }

    @RequestMapping(value = "/carousel/{id}/update", method = RequestMethod.GET)
    public String updateCarousel(@PathVariable  Long id,HttpServletRequest request){
        logger.info(" updateCarousel has been called");
        Carousel carousel = carouseDao.getCarousel(id);
        request.setAttribute("entity",carousel);
        return "/cms/index/carousel_update";
    }

    @RequestMapping(value = "/carousel/update", method = RequestMethod.POST)
    @ResponseBody
    public Result updateCarouselSubmit(Carousel carousel){
        carouseDao.updateCarousel(carousel);
        return Result.ok();
    }

    @Resource
    private IndexService indexService;

    @RequestMapping(value="/recommend/news-list",method = RequestMethod.GET)
    public String recommendNewsList(HttpServletRequest request){
        List<IndexRecommend> indexRecommendList = indexService.newsIndexRecommendList();
        request.setAttribute("indexRecommendList",indexRecommendList);
        return "/cms/index/news_list";
    }

    @RequestMapping(value="/recommend/news-add",method = RequestMethod.POST)
    @ResponseBody
    public Result addNewsIndexRecommendSubmit(IndexRecommend indexRecommend){
        indexDao.addNewsIndexRecommend(indexRecommend);
        return Result.ok();
    }

    @RequestMapping(value="/recommend/{id}/news-update",method = RequestMethod.GET)
    public String updateNewsIndexRecommend(@PathVariable Long id,HttpServletRequest request){
        IndexRecommend indexRecommend = indexDao.getNewsIndexRecommend(id);
        request.setAttribute("entity",indexRecommend);
        return "/cms/index/news_update";
    }

    @RequestMapping(value="/recommend/news-update",method = RequestMethod.POST)
    @ResponseBody
    public Result updateNewsIndexRecommendSubmit(IndexRecommend indexRecommend){
        this.indexDao.updateNewsIndexRecommend(indexRecommend);
        return Result.ok();
    }

    @RequestMapping(value="/recommend/{id}/news-delete",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteNewsIndexRecommend(@PathVariable Long id){
        indexDao.deleteNewsIndexRecommend(id);
        return Result.ok();
    }

}
