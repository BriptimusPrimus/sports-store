angular.module("sportsStore")
    .constant("dataUrl", "services/productsx")
    .controller("sportsStoreCtrl", function ($scope, $http, dataUrl) {
     
        $scope.data = {};

        $http.get(dataUrl)
            .success(function (data) { console.log("promise success");
                $scope.data.products = data;
            })
            .error(function (error) { console.log("promise error");
                $scope.data.error = error || { status : 404 };                 
            });
    });