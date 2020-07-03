package com.ssh.oracle.service;

import com.ssh.oracle.entity.Employees;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ssh.oracle.utils.PageUtils;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author ssh
 * @since 2020-07-02
 */
public interface EmployeesService extends IService<Employees> {

    PageUtils queryPage(Map<String, Object> params);
}
