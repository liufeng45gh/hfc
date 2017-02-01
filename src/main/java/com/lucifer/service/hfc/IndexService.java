package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.*;
import com.lucifer.model.hfc.*;
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

    @Resource
    private ArtistDao artistDao;

    @Resource
    private CulturalFinanceDao culturalFinanceDao;

    @Resource
    private ResearchReportDao researchReportDao;

    @Resource
    private SummitDao summitDao;

    public List<IndexRecommend> newsIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.newsIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            News news = newsDao.getNews(indexRecommend.getTargetId());
            indexRecommend.setTarget(news);
        }
        return indexRecommendList;
    }

    public List<IndexRecommend> artistIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.artistIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            Artist artist = artistDao.getArtist(indexRecommend.getTargetId());
            indexRecommend.setTarget(artist);
        }
        return indexRecommendList;
    }

    public List<IndexRecommend> financeIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.financeIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            CulturalFinance target = culturalFinanceDao.getCulturalFinance(indexRecommend.getTargetId());
            indexRecommend.setTarget(target);
        }
        return indexRecommendList;
    }

    public List<IndexRecommend> researchIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.researchIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            ResearchReport target = researchReportDao.getResearchReport(indexRecommend.getTargetId());
            indexRecommend.setTarget(target);
        }
        return indexRecommendList;
    }

    public List<IndexRecommend> summitIndexRecommendList(){
        List<IndexRecommend> indexRecommendList = indexDao.summitIndexRecommendList();
        for(IndexRecommend indexRecommend:indexRecommendList){
            Summit target = summitDao.getSummit(indexRecommend.getTargetId());
            indexRecommend.setTarget(target);
        }
        return indexRecommendList;
    }
}
