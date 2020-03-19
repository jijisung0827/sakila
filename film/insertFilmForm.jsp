<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>
<%@ page import="java.util.*" %>
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
<%
	LanguageDao languageDao = new LanguageDao();
	ArrayList<Language> languageList = languageDao.select();
%>
<body>
	<div id="aside">
		<jsp:include page="/inc/sidemenu.jsp"></jsp:include>
	</div>
	<div id="section">
		<h1>INSERT FILM</h1>
		<form method="post"
			action="<%=request.getContextPath()%>/film/insertFilmAction.jsp">
			<fieldset>
				<div>
					title : <input type="text" name="title">
				</div>
				<div>
					description : <input type="text" name="description">
				</div>
				<div>
					releaseYear : <input type="text" name="releaseYear">
				</div>
				<div>
					languageId : 
				<select name="languageId" >
        			<%
        				for(Language c : languageList){
        			%>
        				<option value="<%=c.getLanguageId() %>">
        					<%=c.getLanguageId() %>
        				</option>
        			<%	
        				}
        			%>
        				
        		</select>
				</div>
				<div>
					retalDuration : <input type="text" name="retalDuration">
				</div>
				<div>
					rentalRate : <input type="text" name="rentalRate">
				</div>
				<div>
					length : <input type="text" name="length">
				</div>
				<div>
					replacementCost : <input type="text" name="replacementCost">
				</div>
				<div>
					rating : <input type="text" name="rating">
				</div>
				<div>
					specialFeatures : <input type="text" name="specialFeatures">
				</div>
			</fieldset>
			<button type="submit">입력</button>
		</form>
	</div>
</body>
</html>
