<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Title -->
    <title>Petmily</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
//이미지 정보들을 담을 배열
function fileInfo(f){
   
   var file = f.files; 
    var review_File = $("#pet_profile_file").val();
    for(var i=0; i<file.length; i++){
     var review_File =new FileReader(); 
      review_File.onload = function(rst){
         $('#img_box').append('<img src="' + rst.target.result + '">'+"<br>");
         }
      review_File.readAsDataURL(file[i]); 
      }
      
   
     }

</script>
</head>
<style>
#writeform{
   margin-top:100px;
   margin-left:680px;
}
.Btn{
   border-top-left-radius: 5px;
   border-bottom-left-radius: 5px;
   border-top-right-radius: 5px;
   border-bottom-right-radius: 5px;
   margin-left: -3px;
   margin-right: -4px;
   border: 1px solid skyblue;
   background-color: rgba(0, 0, 0, 0);
   color: skyblue;
   padding: 5px;
   width:141px;
   height:40px;
}
input{
   width:285px;
   height:40px;
    border: 1px solid #787878;
    font-size: 13px;
    font-family: "Open Sans", sans-serif;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    color: #1f1e23;
    margin-bottom: 15px;
    padding: 0 25px;
}
.inputfile{
   border:none;
}
</style>
<body>

<%@include file="header-area.jsp"%>
<br>
<br>
 <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/titleimage.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2>입양 후기 작성</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
<form action="ar_write" method="post" id="writeform" encType="multipart/form-data">
<table>
<br>
<tr>
<td> <b>작성자 아이디</b> <br><input type="text" name="ar_id" value="${sessionId}" readonly></td>
</tr>
<tr>
<td><b>분양신청글 번호</b><br><input type="text" name="a_number" value="${AdoptNumber}" readonly></td>
</tr>
<tr>
<td><b>펫 번호 </b><br><input type="text" name="pet_number" value="${AdoptPetNumber}" readonly></td>
</tr>
<tr>
<td><b>펫 종류 </b><br><input type="text" name="pet_kategorie" value="${AdoptPetCategorie}" readonly></td>
</tr>
<tr>
<td> <b>펫 종</b> <br><input type="text" name="pet_name" value="${AdoptPetName}" readonly></td>
</tr>
<tr>
<td> <b>작성자</b> <br><input type="text" name="ar_writer" value="${AdoptName}" readonly></td>
</tr>
<tr>
<td> <b>글 제목</b> <br> <input type="text" name="ar_title" required></td>
</tr>
<tr>
<td><b> 글 내용 </b><br><textarea cols="70" rows="5" name="ar_contents" required></textarea></td>
</tr>
<tr>
<td>
  <b>후기사진 </b> <input type="file" class="inputfile" name ="adoptFile" id ="pet_img_file"
 onchange="fileInfo2(this)"><br>
 <div id="img_box"></div>
</td>
</tr>
<tr>
<td><input type="submit" value="작성완료" class="Btn">
<input type="reset" value="다시작성" class="Btn"></td>
</tr>
</table>
</form>
<br>
<br>
<%@include file="footer-area.jsp"%>
</body>
</html>