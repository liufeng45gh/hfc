package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.Artist;
import com.lucifer.model.hfc.Company;
import com.lucifer.utils.DateUtils;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liufx on 2017/5/25.
 */
@Component
public class CompanyDao extends IBatisBaseDao {

    public List<Company> companyList(String name, Integer offset, Integer count){
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("name",name);
        param.put("offset",offset);
        param.put("count",count);
        return this.hfcSqlSession.selectList("companyList",param);
    }

    public Integer matchRecordCount(String name){
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("name",name);
        return this.hfcSqlSession.selectOne("cmsCompanyMatchRecordCount",param);
    }

    public Integer insertCompany(Company company){
        company.setCreatedAt(DateUtils.now());
        company.setUpdatedAt(DateUtils.now());
        //artist.setTop(0f);
        //news.setClickCount(0);
        return this.hfcSqlSession.insert("insertCompany",company);
    }

    public Company getCompany(Long id){
        return this.hfcSqlSession.selectOne("getCompany",id);
    }

    public Integer updateCompany(Company company){
        company.setUpdatedAt(DateUtils.now());
        return this.hfcSqlSession.update("updateCompany",company);
    }

    public Integer deleteCompany(Long id){
        return this.hfcSqlSession.delete("deleteCompany",id);
    }

}
