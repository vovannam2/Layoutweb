<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Upload Result</title>
</head>
<body>

<h2>${message}</h2>
<c:if test="${not empty filePath}">
    <h3>Image Preview:</h3>
    <img src="${filePath}" alt="Uploaded Image" width="300"/>
</c:if>

</body>
</html>
