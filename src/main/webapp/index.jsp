<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Converter</title>
</head>
<body>
<h1>Currency Conversion!</h1>
<form action="/converter" method="post">
  <div>
    <label for="usd">USD</label>
    <input type="text" name="usd" id="usd" >
  </div><!-- comment -->
  <div>
    <label for="vnd">VND</label>
    <select name="vnd" id="vnd">
      <option value="23000" selected>VND</option>
    </select>
  </div>
  <div>
    <button type="submit">Converter</button>
  </div>
  <div><c:if test="${requestScope['result'] != null}">${requestScope['result']}</div></c:if>
</form>
</body>
</html>