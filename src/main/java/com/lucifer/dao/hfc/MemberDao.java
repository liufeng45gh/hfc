package com.lucifer.dao.hfc;

import com.lucifer.cache.AppCache;
import com.lucifer.cache.CacheProvider;
import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.dao.UserDao;
import com.lucifer.model.AccessToken;
import com.lucifer.model.User;
import com.lucifer.model.hfc.Member;
import com.lucifer.utils.StringHelper;
import org.apache.commons.lang.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by liufx on 17/1/16.
 */
@Component
public class MemberDao extends IBatisBaseDao {

    static final Logger logger = LoggerFactory.getLogger(UserDao.class);

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private AppCache appCache;

    //	@Caching( evict = {
//	@CacheEvict(value="userByIdCache",allEntries=true),
//     @CacheEvict(value="userByPhoneCache",allEntries=true),
//     @CacheEvict(value="userByWeiboIdCache",allEntries=true),
//     @CacheEvict(value="userByWeixinIdCache",allEntries=true),
//     @CacheEvict(value="userLevelByIdCache",allEntries=true),
//     @CacheEvict(value="userPointCache",allEntries=true)})
    public void removeAllCacheing(){
        logger.info("removeAllCacheing  has been called!!----");
        String keyPattern = "getUserByPhone:*";
        appCache.removeAll(keyPattern);
        keyPattern = "getUserByWeiboId:*";
        appCache.removeAll(keyPattern);
        keyPattern = "getUserByWeixinId:*";
        appCache.removeAll(keyPattern);
        keyPattern = "getUserById:*";
        appCache.removeAll(keyPattern);
        keyPattern = "getUserPoint:*";
        appCache.removeAll(keyPattern);
        keyPattern = "getUserLevel:*";
        appCache.removeAll(keyPattern);
    }

    //@Cacheable(value="userByPhoneCache", key="'userByPhoneCache:'+#phone")//
    public User getUserByAccount(String account){
        logger.info("----getUserByAccount has been called!--");
        //return (User)sqlSession.selectOne("getUserByPhone", phone);
        return hfcSqlSession.selectOne("getUserByAccount", account);

    }

    //@Cacheable(value="userByPhoneCache", key="'userByPhoneCache:'+#phone")//
    public Member getMemberByPhone(final String phone){
        logger.info("----getUserByPhone has been called!--");
        //return (User)sqlSession.selectOne("getUserByPhone", phone);
        String key = "getMemberByPhone:"+phone;
        return appCache.find(key, new CacheProvider() {
            @Override
            public Object getData() {
                return hfcSqlSession.selectOne("getMemberByPhone", phone);
            }
        });
    }


    //@Cacheable(value="userByWeiboIdCache",key="'userByWeiboIdCache:'+#weiboId" )//
    public User getUserByWeiboId(final String weiboId){

        String key = "getUserByWeiboId:"+weiboId;
        return appCache.find(key, new CacheProvider() {
            @Override
            public Object getData() {
                return hfcSqlSession.selectOne("getUserByWeiboId", weiboId);
            }
        });
        //return (User)sqlSession.selectOne("getUserByWeiboId", weiboId);
    }

    //@Cacheable(value="userByWeixinIdCache", key="'userByWeixinIdCache:'+#weixinId" )//
    public Member getMemberByWxId(final String wxId){
        String key = "getMemberByWxId:"+wxId;
        return appCache.find(key, new CacheProvider() {
            @Override
            public Object getData() {
                return hfcSqlSession.selectOne("getMemberByWxId", wxId);
            }
        });
        //return (User)sqlSession.selectOne("getUserByWeixinId", weixinId);
    }

    //@Cacheable(value="userByQqIdCache" ,key="'userByQqIdCache:'+#qqId")
    public Member getMemberByQqId(String qqId){
        return (Member)hfcSqlSession.selectOne("getMemberByQqId", qqId);
    }



     public void removeUserCache(Member user){
        logger.info("removeUserCache has been called");
        String key = "getUserByPhone:"+user.getPhone();
        appCache.remove(key);
        key = "getUserByWeiboId:"+user.getWeiboId();
        appCache.remove(key);
        key = "getUserByWeixinId:"+user.getWeixinId();
        appCache.remove(key);
        key = "getUserById:"+user.getId();
        appCache.remove(key);
        key = "getUserPoint:"+user.getId();
        appCache.remove(key);
        key = "getUserLevel:"+user.getId();
        appCache.remove(key);

    }



    /**
     * 修改密码
     * @param user
     * @return
     */
    //@CacheEvict(value="userByIdCache",key="#user.getUserId()")// 清空accountCache 缓存
    public Integer updatePassword(User user){
        String key = "getUserById:"+user.getId();
        appCache.remove(key);
        return hfcSqlSession.update("updatePassword", user);
    }

    /**
     * 绑定手机
     * @param user
     * @return
     */
    //@CacheEvict(value="userByIdCache",key="#user.getUserId()")// 清空accountCache 缓存
//	@Caching( evict = { @CacheEvict(value="userByIdCache",key="#user.getUserId()"),
//	         @CacheEvict(value="userByPhoneCache",key="#user.getPhone()") })
    public Integer userBindPhone(User user){
        Member dbUser = this.getMemberById(user.getId());
        //删除huan
        this.removeUserCache(dbUser);
        return hfcSqlSession.update("userBindPhone", user);
    }

    public Integer updateUserWeiboId(User user) {
        Member dbUser = this.getMemberById(user.getId());
        //删除huan
        this.removeUserCache(dbUser);
        return hfcSqlSession.update("updateUserWeiboId", user);
    }

    public Integer updateUserWeixinId(User user) {
        Member dbUser = this.getMemberById(user.getId());
        //删除huan
        this.removeUserCache(dbUser);
        return hfcSqlSession.update("updateUserWeixinId", user);
    }

    public Integer updateUserQqId(User user) {
        Member dbUser = this.getMemberById(user.getId());
        //删除huan
        this.removeUserCache(dbUser);
        return hfcSqlSession.update("updateUserQqId", user);
    }



    //@Cacheable(value="userByIdCache" ,key="'userByIdCache:'+#userId")//
    public Member getMemberById(final Long userId){
        String key = "getMemberById:"+userId;
        Member member =  appCache.find(key, new CacheProvider() {
            @Override
            public Object getData() {
                return hfcSqlSession.selectOne("getMemberById", userId);
            }
        });
        if (null != member&& StringHelper.isEmpty(member.getAvatar())) {
            member.setAvatar("/web/images/default-avatar.jpg");
        }
        return member;
        //return sqlSession.selectOne("getUserById", userId);
    }


    //@CacheEvict(value="userByIdCache",key="#user.getUserId()")// 清空accountCache 缓存
    public Integer updateMemberInfo(Member member){
        Member dbUser = this.getMemberById(member.getId());
        this.removeUserCache(dbUser);
        Integer updateCount = hfcSqlSession.update("updateMemberInfo",member);
        return updateCount;
    }



    public Boolean isNickExist(String nickName){
        Integer resultCount = hfcSqlSession.selectOne("memberCountByNickName", nickName);
        if (resultCount>0) {
            return true;
        }
        return false;
    }

    public Integer updateMemberNick(Member member){
        return hfcSqlSession.update("updateMemberNick",member);
    }

    public Integer initUserNick(User user){
        return hfcSqlSession.update("initUserNick",user);
    }

    public Integer allUserCount(){
        Integer resultCount = hfcSqlSession.selectOne("allUserCount");
        return resultCount;
    }




    public List<User> userCmsSearch(String sql){
        return this.hfcSqlSession.selectList("userCmsSearch", sql);
    }

    public Integer userCmsSearchCount(String sql){
        return this.hfcSqlSession.selectOne("userCmsSearchCount",sql);
    }

    public List<User> getAllThirdPartUserList(){
        return this.hfcSqlSession.selectList("getAllThirdPartUserList");
    }

    public List<User> getAllNeedBindPhoneUserList(){
        return this.hfcSqlSession.selectList("getAllNeedBindPhoneUserList");
    }

    public List<User> getAllPhoneOnlyUserList(){
        return this.hfcSqlSession.selectList("getAllPhoneOnlyUserList");
    }


    public Long getMemberIdByToken(String token){
        return hfcSqlSession.selectOne("getMemberIdByToken",token);
    }

    public AccessToken newUserLoginToken(Long userId){
        AccessToken accessToken = new AccessToken();
        String token = RandomStringUtils.randomAlphanumeric(20);
        String code = RandomStringUtils.randomAlphanumeric(20);
        accessToken.setToken(token);
        accessToken.setUserId(userId);
        accessToken.setCode(code);

        this.hfcSqlSession.insert("insertUserLoginToken",accessToken);
        return accessToken;
    }

    public void removeToken(String token){
        this.hfcSqlSession.update("removeToken",token);
    }

    public AccessToken getAccessTokenByCode(String code){
        return this.hfcSqlSession.selectOne("getAccessTokenByCode",code);
    }

    public void setCodeInvalid(String code){
        this.hfcSqlSession.update("setCodeInvalid",code);
    }

    public AccessToken getAccessTokenByToken(String accessToken){
        return this.hfcSqlSession.selectOne("getAccessTokenByToken",accessToken);
    }

    @SuppressWarnings({ "unchecked", "rawtypes" })
    public List<User> getUserInfoList(Map params){
        return hfcSqlSession.selectList("getUserInfoList", params);
    }

    @SuppressWarnings("rawtypes")
    public Integer getUserInfoListCount(Map params){
        return (Integer)hfcSqlSession.selectOne("getUserInfoListCount", params);
    }


    public void setUserBlock(User user){
        hfcSqlSession.update("setUserBlock",user);
    }

    public void insertMember(Member member){
        hfcSqlSession.insert("insertMember",member);
    }
}
