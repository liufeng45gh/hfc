package com.lucifer.service.hfc;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/1/21.
 */
@Component
public class PinYinService {

    public String toHanYuPinYin(String chinese) throws BadHanyuPinyinOutputFormatCombination {

        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        char chars [] =  chinese.toCharArray();
        String pinyin = "";
        for (char ch: chars) {
            if (this.checkChinese(ch)) {
                pinyin = pinyin + String.valueOf(PinyinHelper.toHanyuPinyinStringArray(ch,defaultFormat));
            } else {
                pinyin = pinyin + String.valueOf(ch);
            }

        }
        return pinyin;
    }

    public  boolean checkChinese(char word){
        if ((word >= 0x4e00)&&(word<=0x9fbb)) return true;
        else return false;
    }
}
