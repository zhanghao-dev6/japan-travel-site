package com.zhanghao.jnavigator.entity;

import lombok.Data;

@Data
public class TravelSpot {
    private Integer id;
    private String name_zh;      // 中文名
    private String name_jp;      // 日文名
    private String reading;      // 读音
    private String city;         // 城市中文
    private String description;  // 景点描述
    private String image_url;    // 图片链接

    // --- 新增字段 ---
    private String anime_title;  // 动漫标题
    private String anime_intro;  // 动漫解说
    private String city_en;      // 城市英文（天气用）
    private Double lat;          // 纬度
    private Double lng;          // 经度
    private String ticket_link;  // 购票链接
}