package com.lucifer.controller.cms.hfc;

import com.lucifer.service.hfc.NewsSearchService;
import com.lucifer.utils.Result;
import org.apache.solr.client.solrj.SolrServerException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * Created by Administrator on 2017/2/8.
 */

@Controller
@RequestMapping("/cms/news")
public class CmsNewsSearchController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private NewsSearchService newsSearchService;

    @RequestMapping(value="/search/re-import",method = RequestMethod.POST)
    @ResponseBody
    public Result reImport() throws IOException, SolrServerException {
        logger.info("CmsNewsSearchController reImport has been called");
        newsSearchService.reImport();
        return Result.ok();
    }
}
