/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kam.cms;

/**
 *
 * @author Blacksteath
 */
public class PostBean {
    private Integer postId;
    private String postTitle;
    private String postContent;
    private String postSummary;
    private Integer posterId;
    private String posterName;

    private String[] categories;
    
    
    public PostBean() {
    }
    
    public PostBean(Integer postId, String postTitle, String postContent, String postSummary, Integer posterId, String posterName) {
        this.postId = postId;
        this.postTitle = postTitle;
        this.postContent = postContent;
        this.postSummary = postSummary;
        this.posterId = posterId;
        this.posterName = posterName;
    }

    public PostBean(String postTitle, String postContent, String postSummary, Integer posterId) {
        this.postTitle = postTitle;
        this.postContent = postContent;
        this.postSummary = postSummary;
        this.posterId = posterId;
    }

   

    public Integer getPosterId() {
        return posterId;
    }

    public void setPosterId(Integer posterId) {
        this.posterId = posterId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostContent() {
        return postContent;
    }

    public void setPostContent(String postContent) {
        this.postContent = postContent;
    }

    public String getPostSummary() {
        return postSummary;
    }

    public void setPostSummary(String postSummary) {
        this.postSummary = postSummary;
    }

     public String[] getCategories() {
        return categories;
    }

    public void setCategories(String[] categories) {
        this.categories = categories;
    }
    
     public String getPosterName() {
        return posterName;
    }

    public void setPosterName(String posterName) {
        this.posterName = posterName;
    }

    @Override
    public String toString() {
        return "PostBean{" + "postId=" + postId + ", postTitle=" + postTitle + ", posterId=" + posterId + ", posterName=" + posterName + '}';
    }
    
}


