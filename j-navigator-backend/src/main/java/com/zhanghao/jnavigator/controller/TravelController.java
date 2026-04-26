package com.zhanghao.jnavigator.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import com.zhanghao.jnavigator.mapper.TravelSpotMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@CrossOrigin(origins = "*")
@RestController
public class TravelController {

    @Autowired // 自动连接上面的 Mapper
    private TravelSpotMapper travelSpotMapper;

    @GetMapping("/spots") // 定义浏览器访问的路径
    public List<?> getSpots() {
        return travelSpotMapper.findAll();
    }
}