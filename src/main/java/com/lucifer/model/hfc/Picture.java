package com.lucifer.model.hfc;

/**
 * Created by fx on 2017/5/2.
 */
public class Picture {

    private Long id;

    private String url;

    private String description;

    private Long atlasId;

    private Float top;

    private Integer isDeleted;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getAtlasId() {
        return atlasId;
    }

    public void setAtlasId(Long atlasId) {
        this.atlasId = atlasId;
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
}
