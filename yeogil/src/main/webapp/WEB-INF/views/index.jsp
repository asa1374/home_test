<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/area/area.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/area/city_list.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/common/web/default_ko.css"/>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/common/web/gnb.css" />
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/component/reset.css" />
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/component/default.css" />
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/city/header_v2.css" />
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/city/spot_list.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">

</div>
<script src="<%=application.getContextPath()%>/resources/js/yeogil.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/city/city.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/comp/compo.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/comm/comm.js"></script>
<script>
yeogil.init('<%=application.getContextPath()%>');
</script>
</body>
</html>
