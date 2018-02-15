<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div div{
float:left;
width:80px
}
div{
width:180px;
}
</style>
</head>
<body>
    <div ><div>用户名</div><div><input name="id" type="text" value="${sessionScope.id}"></div></div><br>
<div ><div>请输入源SDFSFDD：</div><div><input name="sourceIP" type="text" value="${sessionScope.sourceIP}"></div></div>  
   <div  ><div>请输入</div><div><input name="title" type="text" value="${sessionScope.title}"></div></div> 
</body>
</body>
</html>