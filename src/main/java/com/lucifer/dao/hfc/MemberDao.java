package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.Member;
import org.springframework.stereotype.Component;

/**
 * Created by liufx on 17/1/16.
 */
@Component
public class MemberDao extends IBatisBaseDao {

    public void insertMember(Member member){
        hfcSqlSession.insert("insertMember",member);
    }
}
