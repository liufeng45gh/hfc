package com.lucifer.service.hfc;

import net.sourceforge.pinyin4j.PinyinHelper;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/1/21.
 */
@Component
public class PinYinService {

    public String toHanYuPinYin(String chinese){
        char chars [] =  chinese.toCharArray();
        String pinyin = "";
        for (char ch: chars) {
            pinyin = pinyin + String.valueOf(PinyinHelper.toHanyuPinyinStringArray(ch));
        }
        return pinyin;
    }
}
