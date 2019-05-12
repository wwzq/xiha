package com.zzu.xiha.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

public class SendCode {
    public static Boolean send(String phone, String code) throws ClientException {
        DefaultProfile profile = DefaultProfile.getProfile("default", "", "");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        //request.setProtocol(ProtocolType.HTTPS);
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "cmfz");
        request.putQueryParameter("TemplateCode", "SMS_164270196");
        request.putQueryParameter("TemplateParam", "{\"code\":\"" + code + "\"}");
        CommonResponse response = client.getCommonResponse(request);
        String data = response.getData();
        JSONObject jsonObject = JSON.parseObject(data);
        String c = (String) jsonObject.get("Code");
        if ("OK".equals(c)) {
            return true;
        } else {
            return false;
        }
    }
}
