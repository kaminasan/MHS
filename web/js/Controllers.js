/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var LoginApp = angular.module('LoginApp',[]);
LoginApp.controller('loginController', ['$scope', '$http', 
    function($scope, $http){
        
        $scope.loginData = {};
        
        $scope.processLogin = function(){
            $http({
                method: 'POST',
                url: '/login',
                data: $scope.loginData,
                headers: {'Content-Type' : 'application/x-www-form-urlencoded'}
            }).success(function(data){
                console.log(data);
                location.reload();
            });
        };
        
}]);

