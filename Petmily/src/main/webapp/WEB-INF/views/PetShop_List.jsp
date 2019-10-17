<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petmily</title>
</head>

<style>
.itemList{
    display: inline-block;
	margin-left : 220px;
	margin-bottom:70px;
	width:337px;
}
.itemname{
	font-size:23px;
}
.iteminfo{
	text-align:center;
	font-size:18px;
}
.itemprice{
	text-align:center;
	font-size:18px;
}
#searchInput{
    display: block;
    margin: 0 auto;
    width: 400px;
    height : 40px;
    text-align: center;
}
.searchResult{
   display:block;
   margin:0 auto;
    width: 400px;
    height : 40px;
    height: auto;
    top: 37px;
    left: 134px;
    border: 1px solid #ddd;
    box-shadow: 0 4px 5px rgba(0,0,0,0.3);
    font-size : x-large;
}
.searchText{
	display: block;
	margin-left: 43%;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>

// 실시간 검색 기능


function Item_Serach(){
      
   // 검색값
   var keyword = $("#searchInput").val();
   
      
   $.ajax({
      type : "post",
      url : "Keyword",
      data : {"keyword" : keyword},
      dataType : "json",
      success :  function(searchResult){
         var result = "";
         
         if(searchResult == ""){
             result = "<h1 class='searchText'>조회 결과가 없습니다.</h1>"; 
            $(".Item").html(result);
         }
         
      for(var i in searchResult){
       	 result += "<div class = 'itemList'>"
         result += "<a href='Shop_View?item_number=" + searchResult[i].item_number + "'>"
         result += "<div class = 'catagory-title'>"		 
         result += "<img src='${pageContext.request.contextPath}/resources/shopIMG/" 
         			+ searchResult[i].item_Profile + "' width='337px' height='338px'/>" ;
         result += "</div> <br>"			
         result += "<div class='itemname'>"
         result +="" + searchResult[i].item_name +"<strong style='color:red;'>[" + 
                              searchResult[i].item_reviewCount + "]</strong> </div> "   ;         
         result += "<div class = 'iteminfo'>" + searchResult[i].item_kind + "<br>" ;
         result +=  searchResult[i].item_katagorie + "<br><hr></div>" ;
         result += "<div class = 'itemprice'>"
         result += "<strong style='color:red;'>" + searchResult[i].item_price + "원</strong> </div>" ;
         result += "</a>"
         result += "</div>"
      	
      }
	  $(".Item").html(result);
      
      if(keyword == null || keyword == ""){
    	  
    	  $(".Item").html("");
      }
      $(".Item").val("");
      },
      
      error : function(){
         alert("item_search 함수 통신 실패 !!");
      }
      
   });
   
}

/*
// 연관검색어
function Item_Serach(){
    
	   //  검색하는 값 
	   var keyword = $("#searchInput").val();
	      
	   $.ajax({
	      type : "post",
	      url : "Keyword",
	      data : {"keyword" : keyword},
	      dataType : "json",
	      success :  function(searchResult){
	         var result = "";
	      	         
	         // 키워드로 조회한 값이 없을때      
	         if(searchResult == ""){
	           
	             result = "조회 결과가 없습니다." 
	            // 연관 검색 
	    	 	 $(".searchResult").html(result); 
	    	 }
	         
	      for(var i in searchResult){
	        
	       result += "<a href='Shop_View?item_number="+searchResult[i].item_number +"'>" + searchResult[i].item_name + "</a> <br>";  
	       
	      }
	
		  $(".searchResult").html(result); 
	      
	      	// 입력한 키워드를 지우게 되면
	      if(keyword == null || keyword == ""){
	     
	    	 $(".searchResult").html(""); 
	       
	      }
	       	
		  $(".searchResult").val("");
	      },
	      
	      error : function(){
	         alert("item_search 함수 통신 실패 !!");
	      }
	      
	   });
	   
	}

*/
</script>


<body>
<%@include file="header-area.jsp" %>
<br>
 <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/titleimage.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2>펫 용품</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    
       
         <!-- 연관검색 기능 2019-10-07 -->
      <!-- <form action="item_search" method="post"  onkeypress="keycheck(event);"> -->
         
         <input type="text" placeholder="검색어를 입력하세요." id="searchInput" onkeyup="Item_Serach();"/>
         
         <div class="searchResult"> </div>
      <!-- </form> -->
	
	<br>
	<br>
	
	<div class ="Item">
	<c:forEach items="${ItemList}" var="ItemList">
	<div class="itemList">
	
		<div class="catagory-title">
		
		<a href="Shop_View?item_number=${ItemList.item_number}">
		<img src="${pageContext.request.contextPath}/resources/shopIMG/${ItemList.item_Profile}" width="337px" height="338px"/>
		</div>
		<br>
		<div class="itemname">${ItemList.item_name}<strong style="color:red;">[${ItemList.item_reviewCount}]</strong></div><br>
		<div class="iteminfo">
		${ItemList.item_kind} <br>
		${ItemList.item_katagorie}<br>
	<hr>
	</div>
	<div class="itemprice"><strong style="color:red;">${ItemList.item_price}원</strong></div>
	</div>
		</a>
	
	</c:forEach>
	</div>
<br>
<br>
<br>

<%@include file="footer-area.jsp" %>

</body>
</html>