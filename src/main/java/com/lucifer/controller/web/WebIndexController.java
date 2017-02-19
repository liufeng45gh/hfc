package com.lucifer.controller.web;

import com.lucifer.dao.hfc.CarouseDao;
import com.lucifer.model.hfc.Carousel;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.service.hfc.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/2/19.
 */
@Controller
public class WebIndexController {

    @Resource
    private CarouseDao carouseDao;

    @Resource
    private IndexService indexService;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String newsIndex(HttpServletRequest request){

        List<Carousel> carouselList = carouseDao.carouselList();
        request.setAttribute("carouselList",carouselList);

        List<IndexRecommend> newsRecommendList = indexService.newsIndexRecommendListLimit6();
        request.setAttribute("newsRecommendList",newsRecommendList);

        List<IndexRecommend> artistRecommendList = indexService.artistIndexRecommendListLimit16();
        request.setAttribute("artistRecommendList",artistRecommendList);

        List<IndexRecommend> financeRecommendList = indexService.financeIndexRecommendListLimit3();
        request.setAttribute("financeRecommendList",financeRecommendList);

        List<IndexRecommend> researchRecommendList = indexService.researchIndexRecommendListLimit3();
        request.setAttribute("researchRecommendList",researchRecommendList);


        return "/web/index";
    }
}
