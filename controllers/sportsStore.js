angular.module("sportsStore")
    .constant("dataUrl", "http://localhost:5500/products")
    .constant("orderUrl", "http://localhost:5500/orders")    
    .controller("sportsStoreCtrl", function ($scope, $http, $location, 
        dataUrl, orderUrl, cart) {
     
        $scope.data = {};

        $http.get(dataUrl)
            .success(function (data) { console.log("promise success");
                $scope.data.products = data;
            })
            .error(function (error) { console.log("promise error");
                $scope.data.error = error || { status : 404 };                 
            });

        $scope.sendOrder = function (shippingDetails) {
            var order = angular.copy(shippingDetails);
            order.products = cart.getProducts();
            $http.post(orderUrl, order)
                .success(function (data) {
                    $scope.data.orderId = data.id;
                    cart.getProducts().length = 0;
                })
                .error(function (error) {
                    $scope.data.orderError = error;
                }).finally(function () {
                    $location.path("/complete");
                });
        }            
    });