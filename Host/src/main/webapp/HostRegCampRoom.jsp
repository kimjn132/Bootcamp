<%@page import="org.apache.tomcat.util.bcel.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 구역 등록</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">
.mybtns {
	border: 0 solid black;
	transition: background-color .5s;
	border-radius: 15px;
}

.mybtns:hover {
	background-color: #E94560;
}

.myinputtext{
	height: 300px;
	margin: 0 30px 0 15px;
}

.myinfoinput{
	
	width: 300px;
	border: 0.5px solid gray;
	border-radius: 10px;
	height: 30px;
	padding: 0px 10px 0px 10px;
	
}
</style>
</head>
<body>

<%@ include file = "hnav1.jsp" %>

<div class="container">
 	<div class="row myhdrow">
 	
<table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col" width="15" >자리번호</th>
      <th scope="col" width="15" >지정가</th>
      <th scope="col" width="10" >자리당 최대 인원</th>
    </tr>
  </thead> 
  <tbody>
  <c:forEach items="${roomlist}" var="dto">
    <tr>
      <td>${dto.roNum}</td>
      <td>${dto.roPrice}</td>
      <td>${dto.roMax}</td>
    </tr>
    </c:forEach>
   </tbody>
</table>


<form action="CampRoomAdd.do" method="post" >

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1" > 자리번호 </span>
  <input type="text" class="form-control" placeholder="자리번호" aria-label="inputnumber" aria-describedby="basic-addon1" name="roNum">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1"> 지정가</span>
  <input type="text" class="form-control" placeholder="지정가" aria-label="inputprice" aria-describedby="basic-addon1" name="roPrice">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1"> 최대인원 </span>
  <input type="text" class="form-control" placeholder="최대인원" aria-label="inputroommax" aria-describedby="basic-addon1" name="roMax">
</div>

<input type="submit" value="등록" class="btn btn-primary" >
<a href="host_main.do" type="button" class="btn btn-primary">돌아가기</a>
</form> </div></div>





<%@ include file = "Foot.jsp" %>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>