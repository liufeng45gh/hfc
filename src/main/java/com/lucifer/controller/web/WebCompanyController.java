package com.lucifer.controller.web;

import com.lucifer.dao.hfc.ArtistDao;
import com.lucifer.dao.hfc.CompanyDao;
import com.lucifer.model.hfc.Artist;
import com.lucifer.model.hfc.ArtistRecommend;
import com.lucifer.model.hfc.Company;
import com.lucifer.service.hfc.ArtistSearchService;
import com.lucifer.service.hfc.ArtistService;
import com.lucifer.service.hfc.CompanyService;
import com.lucifer.service.hfc.NewsService;
import com.lucifer.utils.Constant;
import com.lucifer.utils.PageInfoWriter;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by liufx on 17/2/9.
 */
@Controller
@RequestMapping("/company")
public class WebCompanyController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private CompanyDao companyDao;

    @Resource
    private CompanyService companyService;

    
    @Resource
    private NewsService newsService;

    @RequestMapping(value="/index",method = RequestMethod.GET)
    public String index(HttpServletRequest request, @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Company> companyList = companyDao.companyList(null,offset,pageSize);
        request.setAttribute("companyList",companyList);

//        List<ArtistRecommend> artistRecommendList = artistService.artistRecommendList();
//        request.setAttribute("artistRecommendList",artistRecommendList);
        newsService.loadNewsRightData(request);
        return "/web/company/index";
    }


    @RequestMapping(value="/list",method = RequestMethod.GET)
    public String list(HttpServletRequest request, @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Company> companyList = companyDao.companyList(null,offset,pageSize);
        request.setAttribute("companyList",companyList);
        return "/web/company/list";
    }



    @RequestMapping(value="/{id}/detail",method = RequestMethod.GET)
    public String detail(HttpServletRequest request,@PathVariable Long id){
//        List<ArtistRecommend> artistRecommendList = artistService.artistRecommendList();
//        request.setAttribute("artistRecommendList",artistRecommendList);

        Company company = companyDao.getCompany(id);
        request.setAttribute("entity",company);

        newsService.loadNewsRightData(request);

        return "/web/company/detail";
    }


}
