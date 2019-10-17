<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Title -->
    <title>Petmily</title>

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
                        <h2>분양안내</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
<img style="width:1150px; height:2000px; display:block; margin: 0px auto;" 
  src="${pageContext.request.contextPath}/resources/petUploadFile/입양절차1.JPG"><br>
<img style="width:1100px; height:1000px; display:block; margin: 0px auto;" 
src="${pageContext.request.contextPath}/resources/petUploadFile/입양절차2.JPG">

<%@include file="footer-area.jsp"%>
</body>
</html>