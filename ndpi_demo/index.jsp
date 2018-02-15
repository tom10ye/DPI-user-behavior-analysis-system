<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
    .text{text-align:center;color:white;font-size:22pt; }

</style>
<title>DPI Index</title>
</head>
<body style="background-image:url('${pageContext.request.contextPath}/resource/img/logo.jpg');background-repeat:no-repeat;background-size:100%;">
   <div class="text" >
      <h1><i>User Behaviour Analysis System</i></h1>
      <br><br>
		<h4>This is a front-end programme of user behavior analysis system based on Deep Packet Inspection technique. Please enter and see what DPI could bring to us. Have fun!</h4>
		<br><br>
      <a href=<c:url value="/lookByConditions"/> ><span class='text'>Enter>></span></a>
   </div>
 </body>
</html>