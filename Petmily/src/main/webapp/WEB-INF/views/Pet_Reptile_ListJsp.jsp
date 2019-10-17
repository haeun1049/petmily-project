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

.dlkgfnld{
border: 5px solid #f5f5f5;
border-radius: 10px;
display:block;
margin : 30px;
clear : nono;
width: 20%;
text-align:center;
}

.d{
	margin-left:150px;
}
.dkjfld{
text-align:center;
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
                        <h2>파충류</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
<div class="dkjfld">
<a href="Pet_name?pet_name=육지거북이">육지거북이</a>
<a href="Pet_name?pet_name=물거북이">물거북이</a>
<a href="Pet_name?pet_name=비어디드레곤">비어디드레곤</a>
<a href="Pet_name?pet_name=카멜레온">카멜레온</a>
<a href="Pet_name?pet_name=레오파드게코">레오파드게코</a>
<a href="Pet_name?pet_name=크레/가고일">크레/가고일</a>
<a href="Pet_name?pet_name=이구아나/도마뱀">이구아나/도마뱀</a>
<a href="Pet_name?pet_name=모니터">모니터</a>
<a href="Pet_name?pet_name=콘/킹/밀크스네이크">콘/킹/밀크스네이크</a>
<a href="Pet_name?pet_name=보아/파이톤">보아/파이톤</a>
<a href="Pet_name?pet_name=양서류">양서류</a>
<a href="Pet_name?pet_name=갑각류">갑각류</a>
</div>

<div class="nav">
<c:forEach var="List" items="${Pet_List}">

<div class="dlkgfnld">
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
<br>
<%@include file="footer-area.jsp"%>
</body>
</html>