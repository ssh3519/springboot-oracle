package com.ssh.oracle.exception;

import com.ssh.oracle.utils.R;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;

/**
 * 全局处理异常
 */
@Slf4j
@RestControllerAdvice(basePackages = "com.ssh.oracle.controller")
public class ExceptionControllerAdvice {
    @ExceptionHandler(value = MethodArgumentNotValidException.class)
    public R handleValidException(MethodArgumentNotValidException e){
        log.error("数据校验出现问题{},异常类型：{}",e.getMessage(),e.getClass());
        Map<String,String> map = new HashMap<>();
        BindingResult result = e.getBindingResult();
//      获取校验的结果
        result.getFieldErrors().forEach(item ->{
//          获取校验提示
            String message = item.getDefaultMessage();
//          获取错误的属性字段
            String field = item.getField();
            map.put(field,message);
        });
        return R.error(BizCodeEnume.VAILD_EXCEPTION.getCode(),BizCodeEnume.VAILD_EXCEPTION.getMsg()).put("data",map);
    }

    @ExceptionHandler(value = Throwable.class)
    public R handleValidException(Throwable e){
        return R.error(BizCodeEnume.UNKNOW_EXCEPTION.getCode(),BizCodeEnume.UNKNOW_EXCEPTION.getMsg());
    }
}
