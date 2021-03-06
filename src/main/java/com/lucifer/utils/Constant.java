package com.lucifer.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Constant {

	public static final int PAFENO = 1;
	public static final int PAGESIZE = 20;

	public static final Integer maxPage = 100;
	
	public static Integer minute_10 =  60*10;
	
	public static Integer hour_1 =  3600;
	
	public static Integer day_30 = 30 * 24 * 3600;
	
	public static Integer day_60 = 60 * 24 * 3600;
	
	public static Integer day_180 = 180 * 24 * 3600;
	
	public static Integer day_365 = 365 * 24 * 3600;
	
	public static Date firstOnlineDate = null;

	public static final String KEY_RESULT_MESSAGE = "KEY_RESULT_MESSAGE";

	//生图验证码
	public static final String KAPTCHA_SESSION_KEY = "KAPTCHA_SESSION_KEY";

	//cms user key
	public static final String KEY_CMS_USER = "KEY_CMS_USER";

	//输出结果颜色
	public static final String KEY_RESULT_MESSAGE_COLOR = "KEY_RESULT_MESSAGE_COLOR";
	
	static{
		try {
			firstOnlineDate = new SimpleDateFormat("yyyy-MM-dd").parse("2015-11-9");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static final String defaultAvatar = "/web/images/default-avatar.jpg";


	public static final String CACHE_KEY_PRAISE_APPRECIATE_PRE = "HFC:PERSISTENCE:PRAISE:APPRECIATE:";

	public static final String CACHE_KEY_PERSISTENCE_TOKEN_PRE = "HFC:PERSISTENCE:TOKEN:";

	public static final String CACHE_KEY_PERSISTENCE_READ_APPRECIATE = "HFC:PERSISTENCE:READ:APPRECIATE:";

	public static final String CACHE_KEY_PERSISTENCE_MESSAGE_NEW_COUNT = "HFC:PERSISTENCE:MESSAGE:NEW:COUNT:";

	public static final String CACHE_KEY_GET_APPRECIATE = "HFC:CACHE:GET:APPRECIATE:";

	public static final String CACHE_KEY_GET_MEMBET_BY_ID = "HFC:CACHE:MEMBER:getMemberById:";

	public static final String CACHE_KEY_INDEX_HTML = "HFC:CACHE:INDEX:HTML:";

	public static final String CACHE_KEY_REMOVE_ALL = "HFC:CACHE:*";

	public static final Integer LOGIN_TIME_OUT= 3600 * 24 *10;


			
			
	
}
