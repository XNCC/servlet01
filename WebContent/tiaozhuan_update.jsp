<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  div{
  width:500px;
  height:50px;
  margin:auto auto;
  
  }
 

</style>
</head>
<body>
     <script type="application/javascript">
        window.onload = function(){
           
//                window.open("./跳转目的页面.html");   //target=_blank
//            window.location.href = "跳转目的页面.html"; //target=_self
//                self.location = "跳转目的页面.html";
//                window.navigate("跳转目的页面.html");  //只有IE支持
                top.location = "跳转目的页面.html";
            }
        }

</body>
</html>