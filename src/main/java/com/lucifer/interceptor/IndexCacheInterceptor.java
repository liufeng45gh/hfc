package com.lucifer.interceptor;

import com.lucifer.cache.AppCache;
import com.lucifer.cache.CacheProvider;
import com.lucifer.config.ServerConfig;
import com.lucifer.utils.Constant;
import com.lucifer.utils.HttpClientUtils;
import com.lucifer.utils.StringHelper;
import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by liufx on 17/3/16.
 */
@Component
public class IndexCacheInterceptor extends HandlerInterceptorAdapter {

    @Resource
    private AppCache appCache;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private ServerConfig serverConfig;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        logger.info("IndexCacheInterceptor preHandle has been called");
        String html =  appCache.find(Constant.CACHE_KEY_INDEX_HTML, new CacheProvider() {
            @Override
            public Object getData() {
                return null;
            }
        });
        if (StringHelper.isEmpty(html)) {
            return true;
        }
        response.getWriter().write(html);
        response.setContentType("text/html");
        return false;
    }

    /**
     * This implementation is empty.
     */
    @Override
    public void postHandle(
            HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
            throws Exception {
    }

    /**
     * This implementation is empty.
     */
    @Override
    public void afterCompletion(
            HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {

    }

    @Scheduled(cron = "0/10 * * * * ?")
    private void resetIndexCache() {
        logger.debug("resetIndexCache is {}",serverConfig.resetCache);
        String url = "http://localhost:"+ serverConfig.port+"/index-no-cache";
        if (!serverConfig.resetCache) {
            return;
        }
        logger.debug("start reset");
        try {
            String html = HttpClientUtils.get(url);
            if (StringHelper.isEmpty(html)) {
              appCache.set(Constant.CACHE_KEY_INDEX_HTML,html);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
