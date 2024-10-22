//package org.ssssssss.magicboot.cache;
//
//import org.springframework.stereotype.Component;
//import org.ssssssss.magicapi.modules.db.cache.SqlCache;
//
//
///*
// * 自定义SQL缓存,替代DefaultSqlCache
// */
//@Component
//public class CustomSqlCache implements SqlCache {
//
//    @Override
//    public void put(String s, String s1, Object o) {
//
//    }
//
//    @Override
//    public void put(String name, String key, Object value, long ttl) {
//        //将SQL结果存入到缓存
//    }
//
//    @Override
//    public Object get(String name, String key) {
//        // 从缓存中提取SQL结果
//        return null;
//    }
//
//    @Override
//    public void delete(String name) {
//        // 删除缓存
//    }
//
//
//}