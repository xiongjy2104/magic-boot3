package org.ssssssss.magicboot.interceptor;

import org.springframework.stereotype.Component;
import org.ssssssss.magicapi.core.context.RequestEntity;
import org.ssssssss.magicapi.modules.db.BoundSql;
import org.ssssssss.magicapi.modules.db.inteceptor.SQLInterceptor;

import java.util.Arrays;

@Component
public class CustomSQLInterceptor implements SQLInterceptor {

    @Override
    public void preHandle(BoundSql boundSql, RequestEntity requestEntity) {
//        System.out.println("要执行的SQL:" + boundSql.getSql());
//        System.out.println("要执行的SQL参数:" + Arrays.toString(boundSql.getParameters()));
        // 这里也可以通过boundSql的方法改写SQL和参数
    }
}