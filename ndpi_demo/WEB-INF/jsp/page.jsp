<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
   <title>page</title>
   <body>
       <div class="page">
         <div class="left"><font color="white"><b>Total</b></font><span style="color:red;font-size:xx-large">${totalCount}</span><font color="white"><b>logs</b></font></div>
         <div class="right">
         <c:if test="${currentPage == 1}">
             <span class="disabled"><< Previous page</span>        
         </c:if>
         <c:if test="${currentPage != 1}">
             <a href="lookByConditions?page=${currentPage-1}&id=${sessionScope.id}&sourceIP=${sessionScope.sourceIP}&title=${sessionScope.title}&txtDate1=${sessionScope.txtDate1}&txtDate2=${sessionScope.txtDate2}&selse=${sessionScope.selse}"><< Previous page</a>
         </c:if>
         <c:if test="${currentPage == 1}">
         <span class="current">1</span>
         </c:if>
         <c:if test="${currentPage != 1}">
         <a href="lookByConditions?page=1&id=${sessionScope.id}&sourceIP=${sessionScope.sourceIP}&title=${sessionScope.title}&txtDate1=${sessionScope.txtDate1}&txtDate2=${sessionScope.txtDate2}&selse=${sessionScope.selse}">1</a>
         </c:if>
         <%     //model传来的数据默认是request域中的，不是session域
                 int pageTimes = (Integer)request.getAttribute("pageTimes");
                 for(int i=1;i<pageTimes;i++)
                 {
                     request.setAttribute("page", i+1);
         %>            
         <c:if test="${currentPage == page}">
             <span class="current"><%=i+1%></span>       
         </c:if>
         <c:if test="${currentPage != page}">
              <a href="lookByConditions?page=<%=i+1%>&id=${sessionScope.id}&sourceIP=${sessionScope.sourceIP}&title=${sessionScope.title}&txtDate1=${sessionScope.txtDate1}&txtDate2=${sessionScope.txtDate2}&selse=${sessionScope.selse}"><%=i+1%></a>
         </c:if>
         <%} %>
         
         <c:if test="${currentPage == pageTimes}">
             <span class="disabled">Next page >></span>        
         </c:if>
         <c:if test="${currentPage != pageTimes}">
         <a href="lookByConditions?page=${currentPage+1}&id=${sessionScope.id}&sourceIP=${sessionScope.sourceIP}&title=${sessionScope.title}&txtDate1=${sessionScope.txtDate1}&txtDate2=${sessionScope.txtDate2}&selse=${sessionScope.selse}">Next page >></a>
         </c:if>
         </div>
 </div>
   
   
   
   
   
 </body>

</html>
 































