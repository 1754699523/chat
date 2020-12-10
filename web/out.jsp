<%--
  Created by IntelliJ IDEA.
  User: z1754
  Date: 2020/12/6
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/test/chat" method=post>
        <textarea  cols="105" rows="25" name="show" style="width: 100%">
          <%
              String input=request.getParameter("send");

          %>
            <%=input%>
        </textarea>
</form>

</body>
</html>
