<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 상세정보 등록</title>
<%
request.setCharacterEncoding("UTF-8");
String hostadresss = request.getParameter("hostaddress"); 
%>

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


<%-- nav include   22.11.14 호식 수정 --%>
<%@ include file = "hnav1.jsp" %>


<br> <br>
<div class="container">
 	<div class="row myhdrow">
<form action="regcamp.do" method="post">
<h5>캠핑장의 카테고리를 선택해주세요.</h5>
<input type="radio" class="btn-check" name="regCategory" id="option1" value= "바다 근처" autocomplete="off">
<label class="btn btn-outline-primary" for="option1">바다 근처</label>

<input type="radio" class="btn-check" name="regCategory" id="option2" value= "계곡 근처" autocomplete="off">
<label class="btn btn-outline-primary" for="option2">계곡 근처</label>

<input type="radio" class="btn-check" name="regCategory" id="option3" value= "숲 근처" autocomplete="off">
<label class="btn btn-outline-primary" for="option3">숲 근처</label>

<input type="radio" class="btn-check" name="regCategory" id="option4" value= "산 근처" autocomplete="off">
<label class="btn btn-outline-primary" for="option4">산 근처</label> <br> <br>

<h5>캠핑장 주변 편의시설을 선택해주세요.</h5>
<input type="radio" class="btn-check" name="facilityPE" id="option5" value= "전기" autocomplete="off">
<label class="btn btn-outline-primary" for="option5">전기</label>

<input type="radio" class="btn-check" name="facilityPH" id="option6" value= "온수" autocomplete="off">
<label class="btn btn-outline-primary" for="option6">온수</label>

<input type="radio" class="btn-check" name="facilityPW" id="option7" value= "개수대" autocomplete="off">
<label class="btn btn-outline-primary" for="option7">개수대</label>

<input type="radio" class="btn-check" name="facilityPC" id="option8" value= "취사 시설" autocomplete="off">
<label class="btn btn-outline-primary" for="option8">취사 시설</label> <br> <br>


<input type="radio" class="btn-check" name="facilityPT" id="option9" value= "공용 화장실" autocomplete="off">
<label class="btn btn-outline-primary" for="option9">공용 화장실</label> 
<input type="radio" class="btn-check" name="facilityPS" id="option10" value= "공용 샤워장" autocomplete="off">
<label class="btn btn-outline-primary" for="option10">공용 샤워장</label> 
<input type="radio" class="btn-check" name="facility12" id="option20" value= "물놀이장" autocomplete="off">
<label class="btn btn-outline-primary" for="option20">물놀이장</label> <br> <br>


<input type="radio" class="btn-check" name="facilityPB" id="option11" value= "용품 판매 및 대여" autocomplete="off">
<label class="btn btn-outline-primary" for="option11">용품 판매 및 대여</label> 
<input type="radio" class="btn-check" name="facilityPA" id="option12" value= "애완동물 동반 가능" autocomplete="off">
<label class="btn btn-outline-primary" for="option12">애완동물 동반 가능</label> <br> <br>

<input type="radio" class="btn-check" name="facility9" id="option17" value= "주차장" autocomplete="off">
<label class="btn btn-outline-primary" for="option17">주차장</label> 
<input type="radio" class="btn-check" name="facility10" id="option18" value= "와이파이" autocomplete="off">
<label class="btn btn-outline-primary" for="option18">와이파이</label>
<input type="radio" class="btn-check" name="facility11" id="option19" value= "운동시설" autocomplete="off">
<label class="btn btn-outline-primary" for="option19">운동시설</label> <br> <br>

<h5>캠핑장 키워드를 선택해주세요.</h5>
<input type="radio" class="btn-check" name="KeywordAN" id="option13" value= "안락" autocomplete="off">
<label class="btn btn-outline-primary" for="option13">안락</label>
<input type="radio" class="btn-check" name="KeywordKK" id="option14" value= "깔끔" autocomplete="off">
<label class="btn btn-outline-primary" for="option14">깔끔</label>
<input type="radio" class="btn-check" name="KeywordHW" id="option15" value= "화려" autocomplete="off">
<label class="btn btn-outline-primary" for="option15">화려</label>
<input type="radio" class="btn-check" name="KeywordYA" id="option16" value= "야경" autocomplete="off">
<label class="btn btn-outline-primary" for="option16">야경</label> <br> <br>

<input type="radio" class="btn-check" name="Keyword5" id="option21" value= "가족들과" autocomplete="off">
<label class="btn btn-outline-primary" for="option21">가족들과</label>
<input type="radio" class="btn-check" name="Keyword6" id="option22" value= "아이들과" autocomplete="off">
<label class="btn btn-outline-primary" for="option22">아이들과</label>
<input type="radio" class="btn-check" name="Keyword7" id="option23" value= "친구들과" autocomplete="off">
<label class="btn btn-outline-primary" for="option23">친구들과</label>
<input type="radio" class="btn-check" name="Keyword8" id="option24" value= "커플끼리" autocomplete="off">
<label class="btn btn-outline-primary" for="option24">커플끼리</label> <br> <br>

<input type="radio" class="btn-check" name="Keyword9" id="option25" value= "조용한" autocomplete="off">
<label class="btn btn-outline-primary" for="option25">조용한</label>
<input type="radio" class="btn-check" name="Keyword10" id="option26" value= "여유로운" autocomplete="off">
<label class="btn btn-outline-primary" for="option26">여유로운</label>
<input type="radio" class="btn-check" name="Keyword11" id="option27" value= "관광지 많은" autocomplete="off">
<label class="btn btn-outline-primary" for="option27">관굉지 많은</label>
<input type="radio" class="btn-check" name="Keyword12" id="option28" value= "장기숙박" autocomplete="off">
<label class="btn btn-outline-primary" for="option28">장기숙박</label> <br> <br>





<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>캠핑장의 이름을 정해주세요.</h5></label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="1" name="regName"></textarea>
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>캠핑장 연락처를 입력하세요.</h5></label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="1" name="regTel"></textarea>
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>캠핑장에 대한 간단한 설명을 입력하세요.</h5></label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="regSummary"></textarea>


<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>캠핑장 주소</h5></label>
  <textarea class="form-control-plaintext" readonly id="exampleFormControlTextarea1" name="regStreetaddress" rows="1" ><%=hostadresss%></textarea>
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>상세주소</h5></label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="1" name="regDetailaddress" ></textarea>
</div> <br>


<input type="submit" class="btn btn-primary" value="제출">
</form></div></div></div>

<%-- Footer include   22.11.14 호식 수정 --%>
<%@ include file = "Foot.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>