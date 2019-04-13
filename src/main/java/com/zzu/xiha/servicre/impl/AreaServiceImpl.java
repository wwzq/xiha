package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.AreaDao;
import com.zzu.xiha.entity.Area;
import com.zzu.xiha.servicre.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaServiceImpl implements AreaService {
    @Autowired
    private AreaDao dao;

    @Override
    public List<Area> selectAllArea() {
        return dao.selectAll();
    }
}
