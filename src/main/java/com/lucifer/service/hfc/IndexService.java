package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.IndexDao;
import com.lucifer.dao.hfc.NewsDao;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.model.hfc.News;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by fx on 2017/1/31.
 */
@Component
public class IndexService {

    @Resource
    private IndexDao indexDao;

    @Resource
    private NewsDao newsDao;

    public List<IndexRecommend> newsIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.newsIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            News news = newsDao.getNews(indexRecommend.getTargetId());
            indexRecommend.setTarget(news);
        }
        return indexRecommendList;
    }
}
