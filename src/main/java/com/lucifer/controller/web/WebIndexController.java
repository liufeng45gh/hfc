package com.lucifer.controller.web;

import com.lucifer.dao.hfc.CarouseDao;
import com.lucifer.model.hfc.Carousel;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.service.hfc.AppreciateSearchService;
import com.lucifer.service.hfc.ArtistSearchService;
import com.lucifer.service.hfc.IndexService;
import com.lucifer.service.hfc.NewsSearchService;
import com.lucifer.utils.Constant;
import com.lucifer.utils.PageInfoWriter;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
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

    @Resource
    private NewsSearchService newsSearchService;


    @Resource
    private ArtistSearchService artistSearchService;

    @Resource
    private AppreciateSearchService appreciateSearchService;


    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String newsIndex(HttpServletRequest request){
          return this.indexWithNoCache(request);
    }


    @RequestMapping(value="/index-no-cache",method = RequestMethod.GET)
    public String indexWithNoCache(HttpServletRequest request){
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

        List<IndexRecommend> memberActivityRecommendList = indexService.memberActivityIndexRecommendListLimit4();
        request.setAttribute("memberActivityRecommendList",memberActivityRecommendList);

        return "/web/index";
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public String search(HttpServletRequest request,
                         @RequestParam(value = "title",required=false,defaultValue="") String title,
                         @RequestParam(value = "page",required=false,defaultValue="1")Integer page) throws IOException, JSONException {

        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        PageInfoWriter pageInfoNews = newsSearchService.searchList(title,page,pageSize);
        logger.info("pageInfoNews.getDataList().size(): {}",pageInfoNews.getDataList().size());
        //List<News> newsList = newsDao.cmsNewsList(title,offset,pageSize);
        request.setAttribute("newsList",pageInfoNews.getDataList());


        PageInfoWriter pageInfoArtist = artistSearchService.searchList(title,page,pageSize);
        logger.info("pageInfoArtist.getDataList().size(): {}",pageInfoArtist.getDataList().size());
        //List<Artist> artistList = artistDao.artistList(name,offset,pageSize);
        request.setAttribute("artistList",pageInfoArtist.getDataList());


//        PageInfoWriter pageInfoAppreciate = appreciateSearchService.searchList(title,page,pageSize);
//        logger.info("pageInfoAppreciate.getDataList().size(): {}",pageInfoAppreciate.getDataList().size());



        return "/web/search";

    }
}
