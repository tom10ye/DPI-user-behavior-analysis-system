<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>

<html>
<head>
 
<title></title>
<style type="text/css">
div div{
float:left;
width:80px
}
div{
width:160px;
}
</style>
 
</head>
 
<body >
        <table>
          <tr>
             <th>Please input ID: </th>
             <th> <input name="id" type="text" value="${sessionScope.id}"></th>
          </tr>
          <tr>
              <th>Please input source IP address: </th>
              <th><input name="sourceIP" type="text" value="${sessionScope.sourceIP}"></th>
          </tr>
          <tr>
              <th>Please input key word or phrase: </th>
              <th><input name="title" type="text" value="${sessionScope.title}"></th>
          </tr>
          <tr>
              <th>Please select time range: </th>
              <th>Starting time: <input name="txtDate1" type="text" style="padding-left:5px;"  onclick="SetDate(this,'yyyy-MM-dd hh:mm')" readonly="readonly" /></th>
              <th>Ending time: <input name="txtDate2" type="text" style="padding-left:5px;"   onclick="SetDate(this,'yyyy-MM-dd hh:mm')" readonly="readonly" /></th>
          </tr>
      </table>
       

       
           Query method: <select id="content" name="selse"  >
                <option value="" selected>Default</option>
                <option value="sourceIP">By source IP address</option>
                <option value="title">By video title</option>
           </select>
       <br>
       
</body>
</html>
</body>
</html>