package com.lucifer.model.hfc;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by liufx on 17/1/16.
 */
public class Appreciate {



    private Long id;

    private Long categoryId;

    private String title;

    private String summary;

    private String logo;

    private String author;

    private String content;

    private Integer clickCount;

    private Integer lWidth;

    private Integer lHeight;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date publishAt;

    private Date createdAt;

    private Date updatedAt;

    private Float top;

    private Integer isDeleted;

    private String categoryName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublishAt() {
        return publishAt;
    }

    public void setPublishAt(Date publishAt) {
        this.publishAt = publishAt;
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

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Integer getClickCount() {
        return clickCount;
    }

    public void setClickCount(Integer clickCount) {
        this.clickCount = clickCount;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Integer getlWidth() {
        return lWidth;
    }

    public void setlWidth(Integer lWidth) {
        this.lWidth = lWidth;
    }

    public Integer getlHeight() {
        return lHeight;
    }

    public void setlHeight(Integer lHeight) {
        this.lHeight = lHeight;
    }

    public String pinHtml(){
        String html =
        "<div id=\"pin_" + this.id +"\"  class=\"pin wfc wft\" style=\"position: absolute; left: 0px; top: 0px; opacity: 1;\">"+

            "<a href=\"/appreciate/" +this.id + "\"target=\"_blank\"  class=\"img x layer-view loaded\">"+
                "<img src=\""+this.logo +"\" width=\"220\" height=\""+this.pinHeight() +"\"  />"+
            "</a>"+

            "<div  class=\"name\">"+this.title+"</div>"+

                "<p class=\"stats less\">"+
                    "<span title=\"喜欢\" class=\"like\"><i></i>153</span>"+
                    "<span title=\"评论\" class=\"comment\"><i></i>1</span>"+
                "</p>"+

                "<div  class=\"comments muted\">"+
                    "<div class=\"comment convo clearfix\">"+
                        "<a href=\"#\"  class=\"img x\">"+
                        "<img src=\"//img.hb.aicdn.com/f231281317484f51cd4de0714daa4ff5c6c7947e878-By0uJm_sq75sf\" class=\"avt\">"+
                        "</a>"+
                        "<div class=\"content\">"+
                        "<a href=\"#\" class=\"author\">pRSEpI01</a>:&nbsp;可以把水印去了吗？"+
                        "</div>"+
                "</div>"+
        "</div>"+

        "</div>";
        return html;
    }

    private Integer defaultPinHeight = 131;

    private Integer defaultPinWidth = 220;

    public Integer pinHeight(){
        if (null == this.lWidth||this.lWidth==0) {
            return defaultPinHeight;
        }
        if (null == this.lHeight||this.lHeight==0) {
            return defaultPinHeight;
        }
        return this.lHeight * this.defaultPinWidth/this.lWidth;

    }
}
