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

.ca{
border: 5px solid #f5f5f5;
border-radius: 10px;
display:block;
margin : 30px;
clear : nono;
width: 20%;
}
.gmd{ 
	text-align:center;
}
.paging{
	margin-left:880px;
}
.nav{
	margin-left:150px;
}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<%@include file="header-area.jsp"%>
<br>
<div class="nav">
<c:forEach var="List" items="${pet_all_searchList}">
<div class="ca">
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

<div class="paging">
<c:if test="${paging.page<=1}">

	[이전]&nbsp; 
</c:if>
<c:if test="${paging.page>1}">
	<a href="pet_all_search?page=${paging.page-1}&search_content=${paging.search_content}
	&search_category=${paging.search_category}">[이전]</a>&nbsp;
</c:if>

<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
	<c:choose>
	
		<c:when test="${i eq paging.page}">
			${i}
		</c:when>
		<c:otherwise> 
		<a href="pet_all_search?page=${i}&search_content=${paging.search_content}
	&search_category=${paging.search_category}">${i}</a>
		</c:otherwise>
	</c:choose>
</c:forEach>

<c:if test="${paging.page>=paging.maxPage}">
[다음]
</c:if>
<c:if test="${paging.page<paging.maxPage}">
<a href="pet_all_search?page=${paging.page+1}&search_content=${paging.search_content}
	&search_category=${paging.search_category}">[다음]</a>
</c:if>
</div>
<br>
<%@include file="footer-area.jsp"%>
</body>
</html>