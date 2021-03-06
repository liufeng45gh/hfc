package com.lucifer.service.hfc;

import com.lucifer.dao.hfc.AppreciateDao;
import com.lucifer.model.hfc.Appreciate;
import com.lucifer.model.hfc.AppreciateComment;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liufx on 17/1/16.
 */
@Component
public class AppreciateService {

    @Resource
    private AppreciateDao appreciateDao;

    @Resource
    private AppreciateCommentService appreciateCommentService;

    public List<Map> jsonList(Long categoryId, Integer offset,Integer count){
        List<Appreciate> appreciateList = appreciateDao.appreciateList(null,categoryId,offset,count);
        List<Map> resultList = new ArrayList<>();
        for (Appreciate appreciate: appreciateList) {
            List<AppreciateComment> appreciateCommentList = appreciateCommentService.appreciateCommentList(appreciate.getId(),0,5);
            appreciate.setCommentList(appreciateCommentList);
            Map entityMap = new HashMap<>();
            entityMap.put("id",appreciate.getId());
            entityMap.put("pinHtml",appreciate.pinHtml());
            resultList.add(entityMap);
        }
        return resultList;
    }
}
