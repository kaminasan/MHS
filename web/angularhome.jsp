<%-- 
    Document   : home
    Created on : Nov 16, 2015, 10:50:03 AM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
    <head><%@include file="/WEB-INF/headsection.jsp" %>
        <title>Minamata HS Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
    </head>

    <body>
        <%@include file="/WEB-INF/fragments/navsection.jsp" %>
        <div class="container-fluid" ng-app="app">
            <div id="jumbotronRow" class="container">


                <header id="theHeader" class="page-header text-center row">
                    <h1>Minamata High School</h1>
                </header>
                <div class="overlay row">

                </div>

                <div id="carouselRow" class="row">

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators aboveOverlay">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>

                        </ol>

                        <!-- Wrapper for slides -->
                        <div id="slidesBox" class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="Images/CarouselImages/stockphoto1.JPG" class="img-responsive" alt="Header1">
                            </div>
                            <div class="item">
                                <img src="Images/CarouselImages/stockphoto2.JPG" class="img-responsive" alt="Header2">
                            </div>

                            <div class="item">
                                <img src="Images/CarouselImages/stockphoto3.JPG" class="img-responsive" alt="Header2">
                            </div>

                            <div class="item">
                                <img src="Images/CarouselImages/stockphoto4.JPG" class="img-responsive" alt="Canoe">
                            </div>


                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control aboveOverlay" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control aboveOverlay" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </div>




            <div class="postRow container" ng-app="app" ng-controller="postRepeater">
                <h3 class="page-header recentEventHeader" >Recent Events</h3>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 post" ng-repeat="post in postList">
                        <div class=""><h3 class="page-header">{{post.postTitle}}</h3></div>
                        <div class="col-xs-6 col-md-6"><img class="img-responsive" ng-src="{{post.postImageUrl}}"></div>
                        <div class="col-xs-6 col-md-6 "><p>{{post.postSummary}}</p></div><span><button class="btn btn-warning" type="button" ng-click="deletePost($index)">Delete</button>
                            <button ng-show="!editing" class="btn btn-warning" type="button" ng-click="editPost($index)">Edit</button>
                            <button ng-show="editing && newPost === postList[$index]" class="btn btn-warning" type="button" ng-click="editPost($index)">Update</button>

                    </div>

                </div>
                <div class="row">
                    <form ng-submit="addPost()">
                    <div class="form-group">
                        <label id="postTitleLabel" for="postTitleInput">Post Title:</label>
                        <input type="text" class="form-control" maxlength="255"  id="postTitleInput" name="postTitle" 
                               value="{{newPost.postTitle}}" placeholder="Post title!" ng-model="newPost.postTitle"required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label id="postSummaryLabel" class="" for="postSummaryTextArea">Post Summary</label>
                        <textarea id="postSummaryTextArea" class="form-control" name="postSummary" placeholder="Insert Your Post Summary Here NO HTML" 
                                  rows="4" cols="50" ng-model="newPost.postSummary" required>{{newPost.postSummary}}</textarea>
                    </div>
                    <div class="form-group">
                        <label id="imageUrlLabel" class="" for="imageUrlInput">Post Image Url</label>
                        <input id="imageUrlInput" class="form-control" placeholder="Image/postx.JPG" name="postImageUrl" ng-model="newPost.postImageUrl" ng-value="newPost.postImageUrl" required>
                    </div>
                    <button type="submit" class="btn btn-danger" ng-show="!editing">Add Post</button>
                    </form>
                </div>
                <div class="container"><%@include file="/WEB-INF/fragments/footer.jsp"%></div>
            </div>
        </div>
        <script>
            angular.module('app', []);
            angular.module('app').controller('postRepeater', function ($scope) {
                var self = this;
                $scope.editing = false;
                $scope.newPost = {postTitle: "empty",
                    postSummary: "empty",
                    postImageUrl: "empty"
                };
                $scope.postList = [];
                $scope.addPost = function () {
                    var newPostToAdd = {
                        postTitle: $scope.newPost.postTitle,
                        postSummary: $scope.newPost.postSummary,
                        postImageUrl: $scope.newPost.postImageUrl
                    };
                    
                    $scope.postList.push(newPostToAdd);
                    self.clearForm();

                }
                
                $scope.editPost = function(index){
                    if(!$scope.editing){
                      $scope.newPost = $scope.postList[index];  
                    $scope.editing = true;
                    }
                    else{
                        $scope.newPost = {};
                        $scope.editing = false;
                        
                    }
                    
                    
                      
                }
        
                $scope.deletePost = function (index) {
                    $scope.postList.splice(index,1);
                }
              self.clearForm = function(){
                    for(var propkey in $scope.newPost){
                        $scope.newPost[propkey] = "";
                        
                    }
                }
            });



        </script>
        <!-- Container end -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>