package com.ssh.oracle.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
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
@TableName("DEPARTMENTS")
@ApiModel(value="Departments对象", description="")
public class Departments implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "DEPARTMENT_ID", type = IdType.ID_WORKER)
    private Integer departmentId;

    @TableField("DEPARTMENT_NAME")
    private String departmentName;

    @TableField("MANAGER_ID")
    private Integer managerId;

    @TableField("LOCATION_ID")
    private Integer locationId;


}
