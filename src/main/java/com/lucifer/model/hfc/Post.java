package com.lucifer.model.hfc;

import com.lucifer.utils.StringHelper;

import java.util.Date;

/**
 * Created by liufx on 2017/5/9.
 */
public class Post {

    private Long id;

    private String title;

    private String description;

    private String contacts;

    private Date createdAt;

    private Date updatedAt;

    private Float top;

    private String summary;

    private String logo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Float getTop() {
        return top;
    }

    public void setTop(Float top) {
        this.top = top;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Boolean isLogoHave(){
        if (StringHelper.isEmpty(this.logo)) {
            return false;
        }
        if ("/cms/images/logo.png".equals(this.logo)){
            return false;
        }
        return true;
    }

    public String summaryText(){
        if (null == this.summary) {
            return "";
        }
        if (this.isLogoHave()){
            if (this.summary.length()<74) {
                return this.summary;
            }
            return this.summary.substring(0,74)+"...";
        } else {
            if (this.summary.length()<110) {
                return this.summary;
            }
            return this.summary.substring(0,110)+"...";
        }

    }

}
