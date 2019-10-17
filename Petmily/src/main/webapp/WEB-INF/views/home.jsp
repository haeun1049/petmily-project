<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Petmily</title>

    <!-- Favicon -->
    <link rel="icon" type="text/css" href="${pageContext.request.contextPath}/resources/img/core-img/favicon.ico">

</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
function join(){
   location.href='JoinForm';
}
function nwindow(){
    var url="vkqdjq";
    window.open(url,"시발","width=1100,height=455");
}

</script>
<body onLoad="nwindow()">
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
<%@include file="header-area.jsp" %>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/event/main_banner8.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/event/main_banner5.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/event/main_banner3.gif);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                        </div>
                    </div>
                </div>
            </div>
             <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/event/main_banner4.gif);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                        </div>
                    </div>
                </div>
            </div>

            
        <!-- !! End Slide !! -->
        </div>
    </div>
    
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-100 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Introduce</a>
                            <h4><a href="#" class="post-headline">Welcome to Petmily</a></h4>
                            <p>2019년 반려동물 산업을 시작으로 국내 최초 안락사없는 유기동물 보호소 "팻밀리"를 설립 및 운영하며 대한민국 반려 동물 산업에 지속적인 향후 발전방안을 끈입없이 고민하고 실천하는 반려동물분야의 선두업체로 자리매김하고 있습니다. 팻밀리에서는 설립 당시 모토는 유지하며 반려동물들의 행복과 동시에 고객만족을 위해 항상 변화하며 발전을 위하여 노력을 기울이고 있습니다. 건강하고 올바른 반려동물문화를 지향하고 항상 처음과 같이 곧은 길로 나아가고자 지속적인 노력에 힘을 기울이고 있습니다.

팻밀리는 반려동물이 고객님의 가족이 되기까지 최고의 환경에서 항상 좋은 컨디션을 유지할 수 있도록, 아가들과 365일 같은 공간에서 정성을 다해 케어하고 있습니다. 반려동물에게 온전한 사랑을 주신다면, 고객님의 삶에 언제나 함께 할 평생의 동반자가 될 것입니다. 반려동물을 사랑하는 모든 분들께 귀한 인연을 이어드리고... </p>
                            <a href="aboutUs" class="btn original-btn">더보기</a>
                        </div>
                    </div>
                </div>
               
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${pageContext.request.contextPath}/resources/img/blog-img/2.jpg" alt="">
                        <!-- Catagory Title -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${pageContext.request.contextPath}/resources/img/blog-img/dogtoy.PNG" alt="">
                                    <div class="post-date">
                                        <a href="#"> <span>장난감</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">브루하하</a>
                                    <h4><a href="#" class="post-headline">브루하하 벨벳토이 4종 강아지장난감</a></h4>
                                    <p>부드러운 촉감과 포근한 느낌의 럭셔리 벨벳 토이입니다. 전연령 강아지가 좋아하는 딸랑이가 내장되어 있는 인기 장난감입니다. 딸랑딸랑~방울 소리에 아이들의 호기심이 폭발합니다:)</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${pageContext.request.contextPath}/resources/img/blog-img/catbob.PNG" alt="">
                                    <div class="post-date">
                                        <a href="#"><span>사료</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">뉴트리나</a>
                                    <h4><a href="#" class="post-headline">뉴트리나 프라임캣 에코5kg 1개 고양이사료 전연령 건식사료</a></h4>
                                    <p>반려묘의 크기, 연령이 어떠하든 , 뉴트리나 프라임캣 에코라면 충분합니다. 적절한 근육량, 균형잡힌 영양으로 최적의 퍼포먼스를 제공하는 에코 반려묘에게 가장 좋은 푸드를 약속합니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${pageContext.request.contextPath}/resources/img/blog-img/domabam.PNG" alt="">
                                    <div class="post-date">
                                        <a href="#"><span>하우스</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">하겐</a>
                                    <h4><a href="#" class="post-headline">하겐 통풍형 엑소테라 파충류 유리장 20cm 도마뱀장 도마뱀사육장 유리용기</a></h4>
                                    <p>유럽의 파충류 학자에 의해 고안된 최상의 파충류 및 양서류 장입니다. 앞쪽으로 열리는 문은 아주 쉽게 파충류에 접근하고 먹이를 줄 수 있는 구조입니다. 특별하게 고안된 잠금장치는 문이 열리거나 파충류가 도망치는 것을 막을 수 있습니다. 천장은 통풍이 가능하며, UVB나 적외선 통과가 가능합니다. 또한 쉽게 청소하고 내부 장식을 용이하게 할 수 있도록 디자인 되었습니다. 뒤에 벽에는 5개의 여닫을 수 있는 전선 구멍이 있어 파충류 히터, 파충류 분수 급수기 등을 장착할 수 있습니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Load More -->
                    <div class="load-more-btn mt-100 wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1000ms">
                        <a href="Shop_List" class="btn original-btn">용품 더보기</a>
                    </div>
                </div>

                <!-- ##### Sidebar Area ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="post-sidebar-area">

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <form action="#" class="search-form">
                                <input type="search" name="search" id="searchForm" placeholder="Search">
                                <input type="submit" value="submit">
                            </form>
                        </div>
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/bg-img/add.gif" alt=""></a>
                        </div>

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title">인기 펫</h5>

                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/blog-img/pome.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">강아지</a>
                                        <h4><a href="#" class="post-headline">포메라니안</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">1위</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/blog-img/per.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">고양이</a>
                                        <h4><a href="#" class="post-headline">페르시안</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2위</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/blog-img/doma.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">파충류</a>
                                        <h4><a href="#" class="post-headline">도마뱀</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">3위</a></p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title"> Pets </h5>
                            <div class="widget-content">
                                <ul class="tags">
                                    <li><a href="#">강아지</a></li>
                                    <li><a href="#">대형견</a></li>
                                    <li><a href="#">중형견</a></li>
                                    <li><a href="#">소형견</a></li>
                                    <li><a href="#">고양이</a></li>
                                    <li><a href="#">파충류</a></li>
                                    <li><a href="#">양서류</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Wrapper End ##### -->
<%@include file="footer-area.jsp" %>
    </body>

</html>