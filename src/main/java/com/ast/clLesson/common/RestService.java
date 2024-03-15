package com.ast.clLesson.common;

import com.ast.clLesson.configProperties.ConfigProperties;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Component
public class RestService {

    @Autowired
    private ConfigProperties configProperties;

    public Map<String, Object> getApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }

    public Map<String, Object> postApi(final String path, Map<String,Object> params) {

        RestTemplate restTemplate = new RestTemplate();
//        restTemplate.getMessageConverters()
//                .add(0,new StringHttpMessageConverter(StandardCharsets.UTF_8));

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<Map<String,Object>> entity = new HttpEntity<Map<String,Object>>(params, headers);

        try {
            final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                    "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path,
                    HttpMethod.POST,
                    entity,
                    new ParameterizedTypeReference<Map<String, Object>>() {
                    });
            Map<String, Object> dataList = response.getBody();
            return dataList;
        } catch (HttpStatusCodeException e) {
//            Map<String, Object> dataList = e.getCause();
//            return e.getRawStatusCode();
            return  new Gson().fromJson(e.getResponseBodyAsString(), Map.class);
//            return (Map<String, Object>) ResponseEntity.status(e.getRawStatusCode()).headers(e.getResponseHeaders())
//                    .body(e.getResponseBodyAsString());
        }

    }

    public Map<String, Object> postApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.POST,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }
}
