package com.zhanghao.jnavigator.mapper;

import com.zhanghao.jnavigator.entity.TravelSpot;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface TravelSpotMapper {
    // 这里的 SQL 语句必须对应你在 Navicat 里的表名 travel_spots
    @Select("SELECT * FROM travel_spots")
    List<TravelSpot> findAll();
}