<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.*"%>
<%@ page import="dao.*"%>
<%@ page import="java.util.*"%>
<%@ page import="util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    body {
        padding: 0;
        margin: 0;
        width: 100%;
        height: 100%;
        overflow: hidden;
        background-position: 0 0;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        position: relative;
        overflow-y: auto;
    }
    
    #aside {
        width: 200px;
        height: 3000px;
        position: fixed;
        background: orange;
        overflow: hidden;
        float: left;
    }
    
    #section {
        margin-left: 300px;
        background: white;
    }
</style>
</head>
<body>
    <div id="aside">
         <jsp:include page="/inc/sidemenu.jsp"></jsp:include>
    </div>
    <div id="section">
        <h1>FILM List</h1>
        <table border ="1">
        	<thead>
        		<tr>
        			<th>FLIMID</th>
        			<th>TITLE</th>
        			<th>DESCRIPTION</th>
        			<th>RELEASE_YEAR</th>
        			<th>LANGUAGE_ID</th>
        			<th>ORIGINAL_LANGUAGE</th>
        			<th>RENTAL_DURATION</th>
        			<th>RENTAL_RATE</th>
        			<th>LENGTH</th>
        			<th>REPLACEMENT_COST</th>
        			<th>RATING</th>
        			<th>SPECIAL_FEATURES</th>
        			<th>LAST_UPDATE</th>
        		</tr>
        	</thead>
        	<tbody>
        		<%
        			FilmDao filmDao = new FilmDao();
        			ArrayList<Film> list = filmDao.selectfilm();
        			for(Film c : list){
        		%>

        		<tr>
        			<th><%=c.getFilmId() %></th>
        			<th><%=c.getTitle() %></th>
        			<th><%=c.getDescription() %></th>
        			<th><%=c.getReleaseYear() %></th>
        			<th><%=c.getLanguageId() %></th>
        			<th><%=c.getOriginalLanguage() %></th>
        			<th><%=c.getRentalDuration() %></th>
        			<th><%=c.getRentalRate() %></th>
        			<th><%=c.getLength() %></th>
        			<th><%=c.getReplacementCost()%></th>
        			<th><%=c.getRating() %></th>
        			<th><%=c.getSpecialFeatures() %></th>
        			<th><%=c.getLastUpdate() %></th>
        		</tr>
        		<%		
        			}
        		%>
        	</tbody>
        </table>
        
        <div>
			<a href="<%=request.getContextPath()%>/film/insertFilmForm.jsp">film 입력</a>
		</div>
    </div>
</body>
</html>
