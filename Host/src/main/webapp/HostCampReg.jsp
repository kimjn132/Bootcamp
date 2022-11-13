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
<script> 
var

</script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<br> <br>
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
<input type="button" class="btn-check" name="facilityPE" id="option5" value= "전기" autocomplete="off">
<label class="btn btn-outline-primary" for="option5">전기</label>

<input type="radio" class="btn-check" name="facilityPH" id="option6" value= "온수" autocomplete="off">
<label class="btn btn-outline-primary" for="option6">온수</label>

<input type="radio" class="btn-check" name="facilityPW" id="option7" value= "개수대" autocomplete="off">
<label class="btn btn-outline-primary" for="option7">개수대</label>

<input type="radio" class="btn-check" name="facilityPC" id="option8" value= "취사 시설" autocomplete="off">
<label class="btn btn-outline-primary" for="option8">취사 시설</label> <br>


<input type="radio" class="btn-check" name="facilityPT" id="option9" value= "공용 화장실" autocomplete="off">
<label class="btn btn-outline-primary" for="option9">공용 화장실</label> 
<input type="radio" class="btn-check" name="facilityPS" id="option10" value= "공용 샤워장" autocomplete="off">
<label class="btn btn-outline-primary" for="option10">공용 샤워장</label> <br>


<input type="radio" class="btn-check" name="facilityPB" id="option11" value= "용품 판매 및 대여" autocomplete="off">
<label class="btn btn-outline-primary" for="option11">용품 판매 및 대여</label> 
<input type="radio" class="btn-check" name="facilityPA" id="option12" value= "애완동물 동반 가능" autocomplete="off">
<label class="btn btn-outline-primary" for="option12">애완동물 동반 가능</label> <br> <br>

<h5>캠핑장 키워드를 선택해주세요.</h5>
<input type="radio" class="btn-check" name="regKeywordAN" id="option13" value= "안락" autocomplete="off">
<label class="btn btn-outline-primary" for="option13">안락</label>
<input type="radio" class="btn-check" name="regKeywordKK" id="option14" value= "깔끔" autocomplete="off">
<label class="btn btn-outline-primary" for="option14">깔끔</label>
<input type="radio" class="btn-check" name="regKeywordHW" id="option15" value= "화려" autocomplete="off">
<label class="btn btn-outline-primary" for="option15">화려</label>
<input type="radio" class="btn-check" name="regKeywordYA" id="option16" value= "야경" autocomplete="off">
<label class="btn btn-outline-primary" for="option16">야경</label>



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
  <label for="exampleFormControlTextarea1" class="form-label" ><h5>캠핑장 상세주소</h5></label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="1" name="regDetailaddress" ></textarea>
</div> <br>


<button type="submit" class="btn btn-primary">제출</button>

<input>



















</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>