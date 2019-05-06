package com.zzu.xiha.controller;

import com.zzu.xiha.entity.Area;
import com.zzu.xiha.servicre.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("index")
public class IndexController {
    @Autowired
    private AreaService service;

    @ResponseBody
    @RequestMapping("index")
    public List<Area> index() {
        List<Area> areas = service.selectAllArea();
        return areas;
    }
}
