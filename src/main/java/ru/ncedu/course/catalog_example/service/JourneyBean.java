package ru.ncedu.course.catalog_example.service;

import javax.ejb.Stateful;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Stateful
@SessionScoped
public class JourneyBean implements Serializable {

    private String url;
    private List<String> list = new ArrayList<>();

    public JourneyBean() {
    }

    public void addUrl(String url, String params) {
        String string;
        if (!url.contains("favicon.ico")) {
            string = "Opened " + url;
            if (params != null) {
                string += "?" + params;
            }
            this.list.add(string);
        }
    }

    public void clear() {this.list.clear();}

    public List<String> getList() {
        return list;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
