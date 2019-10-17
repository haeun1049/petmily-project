<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Title -->
    <title>Petmily</title>
<style>

.aghregregq{
border: 5px solid #f5f5f5;
border-radius: 10px;
display:block;
margin : 30px;
clear : nono;
width: 20%;
}
.geoingqlkg{ 
	text-align:center;
}
.paging{
	margin-left:880px;
}
.nav{
	margin-left:150px;
}
</style>

</head>
<body>
<%@include file="header-area.jsp"%>
<br>
 <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/titleimage.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2>강아지</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="nav">
<div class="geoingqlkg">
<a href="Pet_name?pet_name=불독">불독</a>
<a href="Pet_name?pet_name=코카스파니엘">코카스파니엘</a>
<a href="Pet_name?pet_name=웰시코기">웰시코기</a>
<a href="Pet_name?pet_name=보더콜리">보더콜리</a>
<a href="Pet_name?pet_name=샤페이">샤페이</a>
<a href="Pet_name?pet_name=사모예드">사모예드</a>
<a href="Pet_name?pet_name=비글">비글</a>
<a href="Pet_name?pet_name=스피츠">스피츠</a>
<a href="Pet_name?pet_name=시바이누">시바이누(시바견)</a>
<a href="Pet_name?pet_name=퍼그">퍼그</a>
<a href="Pet_name?pet_name=보스턴테리어">보스턴테리어</a>
</div>
<c:forEach var="List" items="${Pet_Dog_List}">
<div id="aghregregq">
<c:choose>
<c:when test="${(not empty sessionScope.sessionId)}">
<a href="Pet_Dog_View?pet_number=${List.pet_number}&page=1&pet_like_id=${sessionScope.sessionId}"><img style="width:600px; height:500px;" src="${pageContext.request.contextPath}/resources/petUploadFile/${List.pet_profile}"></a><br>
</c:when>
<c:otherwise>
<a href="Pet_Dog_View2?pet_number=${List.pet_number}&page=1"><img style="width:600px; height:500px;" src="${pageContext.request.contextPath}/resources/petUploadFile/${List.pet_profile}"></a><br>
</c:otherwise>
</c:choose>

${List.pet_name}
</div>
</c:forEach>
</div>
</body>
</html>