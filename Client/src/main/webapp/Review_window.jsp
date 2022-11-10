<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">
    function review_window() {
        var url = "Review.jsp";
        var option = "top=100, left=500, width=600, height=500";
        var name ="_blank";
        window.open(url, name ,option);
    }
</script>

 
<a href="javascript:void(0);" onclick="review_window();">완료</a>



</body>
</html>