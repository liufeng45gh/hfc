package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.Carousel;
import com.lucifer.model.hfc.Post;
import com.lucifer.utils.DateUtils;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by liufx on 2017/5/10.
 */
@Component
public class PostDao extends IBatisBaseDao {

    public List<Post> postList(){
        return this.hfcSqlSession.selectList("postList");
    }

    public Integer insertPost(Post post){
        post.setCreatedAt(DateUtils.now());
        post.setUpdatedAt(DateUtils.now());
        return this.hfcSqlSession.insert("addPost",post);
    }

    public Integer deletePost(Long id){
        return this.hfcSqlSession.delete("deletePost",id);
    }

    public Post getPost(Long id){
        return this.hfcSqlSession.selectOne("getPost",id);
    }

    public Integer updatePost(Post post){
        post.setUpdatedAt(DateUtils.now());
        return this.hfcSqlSession.update("updatePost",post);
    }
}
