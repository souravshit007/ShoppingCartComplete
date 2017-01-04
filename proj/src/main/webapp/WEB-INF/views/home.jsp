<%@include file="/WEB-INF/views/template/header.jsp" %>

<br>
<br>
<br>
<br>
<Marquee align=center><h2>welcome....</h2></Marquee>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
             src="<c:url value="/resources/images/Carousel1.jpg" />"
             alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/Carousel5.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/Carousel3.JPG" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<div class="container marketing">

   
    <div class="row" class="float:left;">
        <div class="col-lg-4" >
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=1" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/5.jpg" />" alt=" " width="140" height="140"></a>

            
        </div>
      


    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=2" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/2.jpg" />" alt=" " width="140" height="140"></a>

            
        </div>
        

    <div class="row">
        <div class="col-lg-4" ">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=3" />"
               role="button">
                <img class="img-circle"  src="<c:url value="/resources/images/4.jpg" />" alt=" " width="140" height="140"></a>

           
         </div>
         </div>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

