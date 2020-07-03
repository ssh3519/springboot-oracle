package com.ssh.oracle.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ssh.oracle.entity.Employees;
import com.ssh.oracle.service.EmployeesService;
import com.ssh.oracle.utils.PageUtils;
import com.ssh.oracle.utils.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ssh
 * @since 2020-07-02
 */
@Api(value = "/employees", tags = "员工管理")
@RestController
@RequestMapping("/employees")
public class EmployeesController {
    @Autowired
    private EmployeesService employeesService;

    @ApiOperation(value = "分页查询数据", notes = "分页查询数据", httpMethod = "GET")
    @ResponseBody
    @GetMapping("/queryPage")
    public R queryPage(@RequestParam(required = false, defaultValue = "1") Integer page,
                       @RequestParam(required = false, defaultValue = "10") Integer limit,
                       @RequestParam(required = false) String firstName,
                       @RequestParam(required = false) String lastName) {
//        PageUtils page = employeesService.queryPage(params);
        QueryWrapper<Employees> queryWrapper = new QueryWrapper<>();
        if (!StringUtils.isEmpty(firstName)) {
            queryWrapper.like("FIRST_NAME", firstName);
        }
        if (!StringUtils.isEmpty(firstName)) {
            queryWrapper.like("LAST_NAME", lastName);
        }
        queryWrapper.orderByDesc("SALARY");
        IPage<Employees> iPage = employeesService.page(new Page<>(page, limit), queryWrapper);
        return R.ok().put("data", iPage.getRecords()).put("count", iPage.getTotal());
    }
}
