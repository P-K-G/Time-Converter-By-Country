<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
	
<head>
	<title>
		Creating Search Bar using HTML
		CSS and Javascript
	</title>
	<meta charset="ISO-8859-1">
	<!-- linking the stylesheet(CSS) -->
	<link rel="stylesheet" type="text/css" href="./style.css">
</head>

<body>
	<%String msg=request.getParameter("msg"); 
		if(msg!=null){
		%>
		<span style="text-align: center;display: flex;justify-content: center;">
        <div class = "div">
        <form action="index.jsp">
        <div class="imgcontainer">
      	<span style="text-align: center;display: flex;justify-content: center;">
      	<img src="image/watch_icon.png" alt="Avatar" class="avatar" height = "20%" width="20%" style="border-radius: 50%;">
      	</span>
    	</div>
    	<p style = "height:10%;width:100%;padding:1rem;color:white;font-size:3.0rem;">
    	<% String targetCountry = (String)session.getAttribute("targetCountry");
    	String formattedDateTime = (String)session.getAttribute("formattedDateTime");
    	
    	out.println("Country Name :" + targetCountry + "<br> Converted Time : " + formattedDateTime); %>
    	</p>
    	<button  type="submit" style = "height:10%;width:100%;padding:2rem;font-size:3.0rem;">OK</button>
         </form>
        </div>
    </span>
		
		
<%	
			
		}
		else{
 %>
	<!-- input tag -->
    <span>
        <form action="convert.jsp">
        <div class="div">
        <div class="div5">
                    <img alt="avtar" src="image/watch_icon.png" height = "100%" width="20%" style="border-radius: 50%;position:relative;">
                    <img alt="avtar" src="image/Time.png" height = "100%" width="70%" style="position:relative;">
            </div>
            <div class="div1">
                    <input type="datetime-local" id="time" name="time" required>
            </div>
        <div class="div2">

            <div class="search">
                <input id="searchbar" onkeyup="myFunction1()" type="text"
                name="search" placeholder="Country Code which time you convert" required/>
            </div>
            <!-- ordered list -->
            <div class="list">
                <ul id="myUL1" class="myUL">
                   <%
						String[] availableIDs = TimeZone.getAvailableIDs();
               		 	int i = 0;
						for (String id : availableIDs) {
    					i++;
					%>
                    <li onclick="fnc1(<%=i %>)" ><a href="#" id="<%=i %>"><% out.println(id); %></a></li>
     				<% } %> 
                  </ul>    
            </div>
        </div>
        <div class="div3">

            <div class="search">
                <input id="searchbar1" onkeyup="myFunction2()" type="text"
                name="search1" placeholder="Country Code in which you convert it" required/>
            </div>
            <!-- ordered list -->
            <div class="list">
                <ul id="myUL2" class="myUL">
                <%
String[] availableIDs1= TimeZone.getAvailableIDs();
                int j = 1000;
for (String id : availableIDs1) {
    j++;
%>
                    <li onclick="fnc2(<%=j %>)"><a href="#" id="<%=j %>"><% out.println(id); %></a></li>
     <% } %>              
                  </ul>    
            </div>
        </div>
        
        <div class="div4">
            <button class="button" type="submit" name="submit">Convert</button>
        </div>
    </div>
</form>
	</span>
	<% } %>
	<!-- linking javascript -->
	<script src="./index.js"></script>
</body>

</html>
