'use strict';

var app = angular.module('app', ['ngResource']);

app.controller('formCtrl', ['$scope', function($scope){
  $scope.step = 1;

  $scope.nextStep = function() {
      $scope.step++;
  }

  $scope.prevStep = function() {
      $scope.step--;
  }

  $scope.submitForm = function() {
      // submit code goes here
  }
}]);

app.controller('indexCtrl', function($scope, $log, $http) {

  $http.get("./products.json").success(function(data) {
  	$scope.products = data;
 	});

  $scope.selectBy = function(x) {
    $scope.filterBy = { caliber: x };
  }

  $scope.addItem = function(product) {
    $scope.items.push(product);
    product = {};
  }

  $scope.items = [{}];


});
