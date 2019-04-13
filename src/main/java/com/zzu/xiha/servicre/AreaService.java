package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.Area;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface AreaService {
    @Transactional
    List<Area> selectAllArea();
}
