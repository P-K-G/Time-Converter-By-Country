<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>  
<%@ page import="java.time.*" %>  
<%@ page import="java.time.format.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String time = request.getParameter("time");
String time1 = time.replace('T', ' ');
String time2 = time1.concat(":00");
String TZone = request.getParameter("search");
String CTZone = request.getParameter("search1");

LocalDateTime sourceDateTime = LocalDateTime.parse(time2, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
ZonedDateTime sourceZonedDateTime = sourceDateTime.atZone(ZoneId.of(TZone));
ZonedDateTime targetZonedDateTime = sourceZonedDateTime.withZoneSameInstant(ZoneId.of(CTZone));

String targetCountry = targetZonedDateTime.getZone().getDisplayName(TextStyle.FULL, Locale.getDefault());
String formattedDateTime = targetZonedDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));


session.setAttribute("targetCountry", targetCountry);
session.setAttribute("formattedDateTime", formattedDateTime);
%>

<jsp:forward page="index.jsp">
<jsp:param value="Time in | <%=targetCountry %> |: |<%=formattedDateTime %>" name="msg"/>
</jsp:forward>
</body>
</html>