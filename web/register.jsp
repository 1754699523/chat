<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: z1754
  Date: 2020/12/1
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <title>ע��</title>
    <script type="text/javascript">
        function yz() {
            var x= getElementById("password1").value();
            var y=getElementById("password2").value();
            document.getElementById("1").innerHTML="dsa"
            window.alert(1)
            if(x!=y){
                document.getElementById("1").innerHTML="dsa"
                window.alert("�����������벻һ��")
            }
        }
    </script>
</head>
<body style="background-color: cornsilk">
<table align="center" width="50%">
    <tr>
                     <td>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ţ�</td>
                    <td>
                         <input type="text" name="name" id="name"/>
                         <div id="nameError" style="display:inline;color:#ff0000;"></div>
                    </td>
                 </tr>
             <tr>
                 <td>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
               <td>
                    <input type="password" name="password" id="password">
                   <div id="password1" style="display:inline;color:red;"></div>
               </td>
             </tr>
             <tr>
                <td>ȷ�����룺</td>
                <td><input type="password" name="password2" id="p2">
            <div id="password2" style="display:inline;color:#ff0000;"></div>
                </td>
             </tr>
            <tr>
</table>
<button type="button" onclick="my()" style="text-align: center ">
    ע��
</button>
<script>

    function my(){
  var x=document.getElementById("password").value;
  var y=document.getElementById("p2").value;
     if(x==y) {
            <%

            String name=request.getParameter("name");
            ArrayList names=(ArrayList)session.getAttribute("lognames");
            if(names ==null){
                names=new ArrayList();
                 names.add(name);
                session.setAttribute("lognames",names);

            }
            %>
            window.alert("ע��ɹ�");
            window.location.href = "index.jsp"
        }else{
            window.alert("�������벻һ�£�")
        }
    }
</script>
<p id="1"></p>
</body>
</html>
