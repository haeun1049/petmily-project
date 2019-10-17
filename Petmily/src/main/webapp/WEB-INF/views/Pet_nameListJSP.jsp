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

.sudafdfadfadf{
border: 5px solid #f5f5f5;
border-radius: 10px;
display:block;
margin : 30px;
clear : nono;
width: 20%;

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
                        <h2>포메라니안</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="nav">
<c:forEach var="List" items="${Pet_nameList}">
<div class="sudafdfadfadf">
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
<%@include file="footer-area.jsp"%>
</body>
</html>