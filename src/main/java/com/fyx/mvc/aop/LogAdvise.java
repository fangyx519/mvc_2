package com.fyx.mvc.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import java.util.Date;

@Aspect
@Component
public class LogAdvise {

    public LogAdvise() {
        System.out.println("======LogAdvise被加载======");
    }

    @Around("@annotation(com.fyx.mvc.annotation.OutLog)")
    public Object aroundExec(ProceedingJoinPoint pjp) throws Throwable {

        System.out.println("这是一个环绕Aop");
        long aroundBeforeTime = System.currentTimeMillis();
        System.out.println("请求开始时间是：" + new Date());
        Object[] os = pjp.getArgs();
        for (int i = 0; i < os.length; i++) {
            System.out.println("\t请求参数[" + i + "]:\t" + os[i].toString());
        }
        Object proceed = null;
        try {

            proceed = pjp.proceed();

            System.out.println("方法返回值：" + proceed);
        } catch (Exception e) {
            System.out.println("请求异常信息为：" + e.getMessage());
        }
        System.out.println("运行消耗" + (System.currentTimeMillis() - aroundBeforeTime) + "ms");
        return proceed;
    }

}
