<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset==UTF-8">
<title>Query Result</title>
<script  type="text/javascript" src="${pageContext.request.contextPath }/resource/js/calendar.js" language="javascript" ></script>
<script>
function show()
{
 var content=document.getElementById("content");
 var value=content.value;
 document.getElementById("sourceIP").style.visibility="visible"; 
 document.getElementById("ID").style.visibility="visible"; 
 document.getElementById("title").style.visibility="visible";
 if(value=="sourceIP" ){
	 document.getElementById("sourceIP").style.visibility="hidden"; 
	 document.getElementById("ID").style.visibility="hidden"; 
 }
 else if(value=="title" ){
	 document.getElementById("title").style.visibility="hidden"; 
	 document.getElementById("ID").style.visibility="hidden"; 
 }else{
	 document.getElementById("sourceIP").style.visibility="visible"; 
	 document.getElementById("ID").style.visibility="visible"; 
	 document.getElementById("title").style.visibility="visible";
 }
}
 
/*function clear()
{
  /*for(var i=0;i<document.getElementByTagName("input").length;i++){
document.getElementByTagName("input")[i].value="";
  }
  document.getElementByName("id").value="";
  document.getElementByName("sourceIP").value="";
  document.getElementByName("title").value="";
}
 
}*/
</script>
</head>
<body style="background-image:url('${pageContext.request.contextPath}/resource/img/bg1.jpg');background-repeat:no-repeat;background-size:100%;">

<hr style="height:10px;border:none;border-top:10px groove skyblue;" />

<h3><font color="white">Please set query condition</font></h3>
  <form action="<%=request.getContextPath()%>/lookByConditions" method="get">
      <table  border="2" bgcolor="CCFEFE"> 
         <tr>
             <th align="left" >Query method:</th>
             <th align="left" > 
                  <select id="content" name="selse"  onchange="show()">
                     <option value="" >Default</option>
                     <option value="sourceIP" >Find user</option>
                     <option value="title">Find video</option>
                  </select>
             </th>
         </tr>
          <tr id="ID">
             <th align="left" >Please input log ID: </th>
             <th align="left" > <input name="id" type="text" value="${sessionScope.id}"></th>
     
          </tr>
          <tr id="sourceIP">
              <th align="left">Please input source IP address: </th>
              <th align="left"><input  name="sourceIP" type="text" value="${sessionScope.sourceIP}"></th>
          </tr>
          <tr id="title">
              <th align="left">Please input key word or phrase of video: </th>
              <th align="left"><input name="title" type="text" value="${sessionScope.title}"></th>
          </tr>
          <tr>
              <th align="left">Please select time range: </th>
              
              <td>
              <table>
                   <tr>
                      <th align="left">Starting time: </th>
                      <th ><input name="txtDate1" type="text" style="padding-left:3px;"  onclick="SetDate(this,'yyyy-MM-dd hh:mm')" readonly="readonly" /></th>      
                      <th align="left">Ending time: </th>
                      <th ><input name="txtDate2" type="text" style="padding-left:3px;"   onclick="SetDate(this,'yyyy-MM-dd hh:mm')" readonly="readonly" /></th>
                   </tr>
              </table>
            
          </tr>
      </table>
       
        <!-- 
         <input name="txtDate" type="text" value="2008-12-15 23:34:23" style="padding-left:5px;" id="txtDate" onclick="SetDate(this,'yyyy-MM-dd hh:mm:ss')" readonly="readonly" />
         <input name="txtDate2" type="text" style="padding-left:5px;" id="txtDate" onclick="SetDate(this)" readonly="readonly" />
         <input name="txtDate3" type="button" style="padding-left:5px;" id="txtDate" onclick="SetDate(document.all.txtDate2,'yyyy-MM-dd')" readonly="readonly" />
         -->         

        <input type="submit" value="Submit"> &nbsp;&nbsp;&nbsp;
        <input type="reset"  value="Reset"> &nbsp;&nbsp;&nbsp;
       <!-- <input type="button" value="Clear" onclick="clear()">-->

     </form>
  <br>
  <hr>
  <br>
 
  <c:if test="${empty sessionScope.selse}">
         <table border="2" bgcolor="DCDCDC" >
            <tr bgcolor="FFFFFC" align="center">
               <th width="5%" >log ID</th>
               <th width="10%">Source IP</th>
               <th width="10%">Destination IP</th>
               <th width="20%">Access time</th>
               <th width="30%">Video title</th>
            </tr>
         <c:forEach var="row" items="${click}" >
   
            <tr>
              <th>${row.id }</th>
              <th>${row.sourceIP }</th>
              <th>${row.destIP }</th>
              <th>${row.time}</th>
              <th>${row.title}</th>
            </tr>
         </c:forEach>
           <tr>
             <jsp:include page="/WEB-INF/jsp/page.jsp"></jsp:include>
     
          </tr>
   
        </table>
  </c:if>
  <c:if test="${!empty sessionScope.selse}">
        <table border="2" bgcolor="DCDCDC" >
            <tr bgcolor="FFFFFC" align="center">
               <th>${sessionScope.selse}</th>
               <th>Number of access times</th>
            </tr>
         <c:forEach var="row" items="${click}" >
   
            <tr>
              <c:if test="${sessionScope.selse=='title'}">
                  <th>${row.title }</th>
              </c:if>
              <c:if test="${sessionScope.selse=='sourceIP'}">
                  <th>${row.sourceIP }</th>
              </c:if>
              <th>${row.count }</th>
            </tr>
         </c:forEach>
           <tr>
             <jsp:include page="/WEB-INF/jsp/page.jsp"></jsp:include>
     
          </tr>
   
        </table>
   
  </c:if>

 </body>
</html>