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
		<h1>INDEX</h1>
		<table border="1">
			<thead>
				<tr>
					<th>FILMID</th>
					<th>CATEGORYID</th>
					<th>LASTUPDATE</th>
				</tr>
			</thead>
			<tbody>
				<%
					FilmCategoryDao filmCategoryDao = new FilmCategoryDao();
					ArrayList<FilmCategory> list = filmCategoryDao.selectfilmCategory();
					for (FilmCategory c : list) {
				%>

				<tr>
					<th><%=c.getFilmId()%></th>
					<th><%=c.getCategoryId() %>
					<th><%=c.getLastUpdate()%></th>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>

		<div>
			<a href="<%=request.getContextPath()%>/film/insertFilmCategoryForm.jsp">filmCategory
				입력</a>
		</div>
	</div>
</body>
</html>
