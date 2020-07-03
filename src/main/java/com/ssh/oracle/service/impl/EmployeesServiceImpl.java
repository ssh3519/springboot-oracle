package com.ssh.oracle.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ssh.oracle.entity.Employees;
import com.ssh.oracle.mapper.EmployeesMapper;
import com.ssh.oracle.service.EmployeesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ssh.oracle.utils.PageUtils;
import com.ssh.oracle.utils.Query;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ssh
 * @since 2020-07-02
 */
@Service
public class EmployeesServiceImpl extends ServiceImpl<EmployeesMapper, Employees> implements EmployeesService {

    /**
     * 分页查询员工
     * @param params
     * @return
     */
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        QueryWrapper<Employees> queryWrapper = new QueryWrapper<>();
        String firstName = ((String) params.get("first_name"));
        if (!StringUtils.isEmpty(firstName)){
            queryWrapper.like("FIRST_NAME",firstName);
        }
        IPage<Employees> page = this.page(new Query<Employees>().getPage(params), queryWrapper);
        return new PageUtils(page);
    }
}
