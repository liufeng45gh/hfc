package com.lucifer.dao.hfc;

import com.lucifer.dao.IBatisBaseDao;
import com.lucifer.model.hfc.Carousel;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by fx on 2017/1/31.
 */
@Component
public class CarouseDao extends IBatisBaseDao{

    public List<Carousel> carouselList(){
        return this.hfcSqlSession.selectList("carouselList");
    }

    public Integer insertCarousel(Carousel carousel){
        return this.hfcSqlSession.insert("addCarousel",carousel);
    }

    public Integer deleteCarousel(Long id){
        return this.hfcSqlSession.delete("deleteCarousel",id);
    }

    public Carousel getCarousel(Long id){
        return this.hfcSqlSession.selectOne("getCarousel",id);
    }

    public Integer updateCarousel(Carousel carousel){
        return this.hfcSqlSession.update("updateCarousel",carousel);
    }


}
