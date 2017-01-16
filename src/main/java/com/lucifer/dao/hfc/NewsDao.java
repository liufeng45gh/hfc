package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.News;
import com.lucifer.model.hfc.NewsCategory;
import com.lucifer.utils.DateUtils;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Created by Administrator on 2017/1/15.
 */
@Component
public class NewsDao extends IBatisBaseDao {
    public List<News> cmsNewsList(String title,Integer offset,Integer count){
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("title",title);
        param.put("offset",offset);
        param.put("count",count);
        return this.hfcSqlSession.selectList("cmsNewsList",param);
    }

    public Integer matchRecordCount(String title){
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("title",title);
        return this.hfcSqlSession.selectOne("cmsNewsMatchRecordCount",param);
    }

    public Integer insertNews(News news) {
        news.setCreatedAt(DateUtils.now());
        news.setUpdatedAt(DateUtils.now());
        return this.hfcSqlSession.insert("insertNews",news);
    }

    public List<NewsCategory> cmsNewsCategoryList(){
        return this.hfcSqlSession.selectList("cmsNewsCategoryList");
    }

    public Integer addNewsCategory(NewsCategory newsCategory) {
        return this.hfcSqlSession.insert("addNewsCategory",newsCategory);
    }

    public Integer deleteNewsCategory(Long id){
        return this.hfcSqlSession.delete("deleteNewsCategory",id);
    }

    public NewsCategory getNewsCategory(Long id) {
        return this.hfcSqlSession.selectOne("getNewsCategory",id);
    }

    public Integer newsCategoryUpdate(NewsCategory newsCategory) {
        return this.hfcSqlSession.update("newsCategoryUpdate",newsCategory);
    }
}
