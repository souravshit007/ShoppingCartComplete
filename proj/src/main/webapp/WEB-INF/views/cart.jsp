<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h2><font color="blue">Cart</font></h2>

                    <p>All the selected products in shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                 <a href="#" class="btn btn-danger pull-left" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>  
                <a href="<spring:url value="/order/${cartId}"/>"
                   class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
            </div>

            <table class="table table-hover">
            
                <tr>
                	
                    <th><font color="blue">Product Name</font></th>
                    <th><font color="blue">Unit Price(in Rs.)</font></th>
                    <th><font color="blue">Quantity</font></th>
                    <th><font color="blue">Price(in Rs.)</font></th>
                    <th><font color="red">Action</font></th>
                    
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <th><font color="magenta">{{item.product.productName}}</font></th>
                    <th><font color="magenta">{{item.product.productPrice}}</font></th>
                    <th><font color="magenta">{{item.quantity}}</font></th>
                    <th><font color="magenta">{{item.totalPrice}}</font></th>
                    <th><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>remove</a></th>
                </tr>
                <tr>
                	<th></th>
                    <th>Total Items:</th>
                    <th><font color="bue">{{calCount()}}</font></th>
                    <th>Grand Total</th>
                    <th><font color="red"><b>Rs. {{calGrandTotal()}}</b></font></th>
                    <th></th>
                </tr>
            </table>
			<a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>

    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>