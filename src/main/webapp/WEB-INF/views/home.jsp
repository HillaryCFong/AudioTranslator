<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watson - Speech To Text</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<legend class="header">Convert Audio File to Another Language</legend>
	 
	<form method="POST" action="home" enctype="multipart/form-data">
	<p class="tr-selector">
			<select name="tr-model-id">
				<option value="en-ar">English - Arabic</option>
				<option value="en-fr">English - French</option>
				<option value="en-pt">English - Portuguese</option>
				<option value="en-es">English - Spanish</option>
			</select>
			
		</p>	
		</br>
		<input type="file" name="file" accept=".wav">
		<input type="submit" name="submit" value="Translate">
</br>
	<c:if test="${!empty transcription}">
		<h3>Transcript: </h3>
		<p class="result">${transcription}</p>
	</c:if>
</br>
</br>
	<c:if test="${!empty translation}">
		<h3>Translation: </h3>
		<p class="result">${translation}</p>
	</c:if>
</br>
</br>
	<c:if test="${!empty text}">
		<h3>Text: </h3>
		<p class="result">${text}</p>
	</c:if>
</br>

		
	
	
	</form>
</body>
</html>