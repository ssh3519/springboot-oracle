package com.ssh.oracle.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author ssh
 * @since 2020-07-02
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("EMPLOYEES")
@ApiModel(value="Employees对象", description="")
public class Employees implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "EMPLOYEE_ID", type = IdType.ID_WORKER)
    private Integer employeeId;

    @TableField("FIRST_NAME")
    private String firstName;

    @TableField("LAST_NAME")
    private String lastName;

    @TableField("EMAIL")
    private String email;

    @TableField("PHONE_NUMBER")
    private String phoneNumber;

    @TableField("HIRE_DATE")
    private Date hireDate;

    @TableField("JOB_ID")
    private String jobId;

    @TableField("SALARY")
    private Double salary;

    @TableField("COMMISSION_PCT")
    private Double commissionPct;

    @TableField("MANAGER_ID")
    private Integer managerId;

    @TableField("DEPARTMENT_ID")
    private Integer departmentId;


}
