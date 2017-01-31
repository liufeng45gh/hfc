package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.IndexRecommend;
import com.lucifer.model.hfc.NewsRecommend;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by fx on 2017/1/31.
 */
@Component
public class IndexDao extends IBatisBaseDao {
    public List<IndexRecommend> newsIndexRecommendList(){
        return this.hfcSqlSession.selectList("newsIndexRecommendList");
    }
    public IndexRecommend getNewsIndexRecommend(Long id) {
        return this.hfcSqlSession.selectOne("getNewsIndexRecommend",id);
    }

    public Integer updateNewsIndexRecommend(IndexRecommend indexRecommend){
        //newsRecommend.setTop(0f);
        return this.hfcSqlSession.update("updateNewsIndexRecommend",indexRecommend);
    }

    public Integer addNewsIndexRecommend(IndexRecommend indexRecommend){
        indexRecommend.setTop(0f);
        return this.hfcSqlSession.insert("addNewsIndexRecommend",indexRecommend);
    }

    public Integer deleteNewsIndexRecommend(Long id){
        return this.hfcSqlSession.delete("deleteNewsIndexRecommend",id);
    }
}
