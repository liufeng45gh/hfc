package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.AppreciateComment;
import com.lucifer.utils.DateUtils;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/12.
 */
@Component
public class AppreciateCommentDao extends IBatisBaseDao {

    public Integer insertAppreciateComment(AppreciateComment appreciateComment){
        appreciateComment.setCreatedAt(DateUtils.now());
        appreciateComment.setUpdatedAt(DateUtils.now());
        appreciateComment.setTimestamp(DateUtils.now().getTime());
        return this.hfcSqlSession.insert("insertAppreciateComment",appreciateComment);
    }

    public List<AppreciateComment> appreciateCommentList(Long appreciateId, Integer offset, Integer count){
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("appreciateId",appreciateId);
        param.put("offset",offset);
        param.put("count",count);
        return this.hfcSqlSession.selectList("appreciateCommentList",param);
    }
}
