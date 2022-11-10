<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Review</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/Review_List.css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800'); 
@import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap');

body{
	font-family: 'Nanum Gothic';
	
}

.mybtn {
	transition: background-color .5s;
	border-radius: 15px;
}

.mybtn:hover {
	border: 0 solid black;
	background-color: #E94560;
}

.myscontainer {
	margin-bottom: 25px;
}

.mysearch {
	border-radius: 15px;
	border: 0.5px solid #808080;
	box-shadow: 1px 1px 3px 2px #E6E6E6;
	height: 33px;
	width: 500px;
}


.mytitle{
	font-family: 'Ubuntu', sans-serif;
	color: #E94560;
	font-size: 20px;	
	font-weight: bold;
}

.mysvg{
	margin-right: 5px;
	color: #E94560;
}

.mycard{
	border: 0px solid black;
	margin-bottom: 20px;
}


.mycbody{
	padding: 20px 0 0 0;
}

.myimage {
	border-radius: 15px;
	width: 250px;
	height: 250px;
}

.myctitle{
	font-size: 15px;
	font-weight: 600;
}

.myctext{
	font-weight:100;
	color: gray;
	
}

.mymcontainer{
	margin-bottom: 50px;
}
</style>


<script type="text/javascript">
    function review_window() {
        var url = "star.jsp";
        var option = "top=100, left=500, width=600, height=500";
        var name ="_blank";
        window.open(url, name ,option);
    }
</script>


</head>

<body>
<%@ include file = "Nav.jsp" %>

<div class="row row-cols-1 row-cols-md-3 g-4">
  
<c:forEach items="${review_List}" var="dto">

  <div class="col">
    <div class="card w-75 h-100" >
    
      
      <img src= "images/${dto.regImage1 }" width="400" height="400" class="card-img-top" alt="후기 이미지">
      
      <div class="card-body">
        <h5 class="card-title">${dto.rvTitle }</h5>
        
         
        <div class="card-text" > 
        <h6>${dto.regName }  ${dto.rvStar }점  ${dto.rvTime }</h6>
        </div>
        
        
        <p class="card-text"  >${dto.rvContent }</p>
        
        
        <a href="javascript:void(0);" onclick="review_window();">리뷰 상세보기</a>
        
        
      										
        </div>
    </div>
  </div>
  
  </c:forEach>
  
  
  
  <div class="col">
    <div class="card w-75 h-100">
      <img src="https://img.gqkorea.co.kr/gq/2020/07/style_5f02a9ff3daa9.jpg" width="400" height="400" class="card-img-top" alt="후기 이미지">
      <div class="card-body">
        <h5 class="card-title">둘 안녕하세요!</h5>
        <p class="card-text">두번째 후기</p>
        <a href="https://www.naver.com/" class="btn mybtn btn-secondary">상세보기</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card w-75 h-100">
      <img src="https://image.news1.kr/system/photos/2020/4/29/4174432/no_water.jpg" width="400" height="400" class="card-img-top" alt="후기 이미지">
      <div class="card-body">
        <h5 class="card-title">셋 안녕하세요!</h5>
        <p class="card-text">세번째 후기</p>
        <a href="https://www.naver.com/" class="btn mybtn btn-secondary">상세보기</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card w-75 h-100">
      <img src="https://a.cdn-hotels.com/gdcs/production110/d1295/985557b1-8062-4894-9a32-0d2bc8ae0e7b.jpg?impolicy=fcrop&w=1600&h=1066&q=medium" width="400" height="400" class="card-img-top" alt="후기 이미지">
      <div class="card-body">
        <h5 class="card-title">넷 안녕하세요!</h5>
        <p class="card-text">네번째 후기</p>
        <a href="https://www.naver.com/" class="btn mybtn btn-secondary">상세보기</a>
      </div>
    </div>
  </div>
</div>


















<%@ include file = "Foot.jsp" %>
























</body>
</html>