package com.ast.clLesson.common;

import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class CommonFunc {

    public String getLocalTime() {

        SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:sss");
        Date time = new Date();
        String localTime = format.format(time);

        return localTime;
    }
    public String getLocalTime(String Dateformat) {
        SimpleDateFormat format;
        if(Dateformat.equals("Type1")){
            format = new SimpleDateFormat ("yyyyMMddHHmm");
        } else {
            format = new SimpleDateFormat (Dateformat);
        }
        Date time = new Date();
        String localTime = format.format(time);

        return localTime;
    }
    public String getAwsFileName(String dirName, String fileName) {
        String awsFileName = dirName + "/"  + fileName.split("\\.")[0] + "_" + getLocalTime("Type1") + "." +fileName.split("\\.")[1];   // S3에 저장된 파일 이름
        return awsFileName;
    }

}
