package com.zzu.xiha.test;

import com.zzu.xiha.util.MD5Util;

public class AllTset {
    public static void main(String[] args) {
        final String md5 = MD5Util.getLowerMD5("123456");
        final String s = MD5Util.getUpperMD5("123456");
        System.out.println(md5);
        System.out.println(s);
    }
}
