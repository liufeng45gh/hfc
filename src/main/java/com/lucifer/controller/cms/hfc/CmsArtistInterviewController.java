package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.ArtistInterviewDao;
import com.lucifer.model.hfc.ArtistInterview;
import com.lucifer.model.hfc.News;
import com.lucifer.utils.Constant;
import com.lucifer.utils.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/1/21.
 */

@Controller
@RequestMapping("/cms/artist")
public class CmsArtistInterviewController {

    @Resource
    private ArtistInterviewDao artistInterviewDao;

    @RequestMapping(value="/interview/list",method = RequestMethod.GET)
    public String interviewList(HttpServletRequest request, @RequestParam(value = "title",required=false,defaultValue="") String title,
                                @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<ArtistInterview> interviewList = artistInterviewDao.interviewList(title,offset,pageSize);
        request.setAttribute("interviewList",interviewList);

        Integer matchRecordCount=artistInterviewDao.matchRecordCount(title);

        Integer totalPageCount= PageUtil.getTotalPageCount(matchRecordCount, pageSize);

        PageUtil pageUtil = new PageUtil(request);
        String pageDiv = pageUtil.willPaginate(totalPageCount,  "pages_bar",new String []{"page","msg"});
        request.setAttribute("pageDiv",pageDiv);
        request.setAttribute("title",title);
        return "/cms/artist/interview_list";
    }

}
