<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="/upload" method="post" enctype="multipart/form-data">
    <input type="file" name="file" multiple="multiple" /><p>
    作者：<input type="text" name="author" multiple="multiple" /><p>
    类型：<input type="text" name="type" multiple="multiple" /><p>
    时间：<input type="text" name="date" multiple="multiple" /><p>
    <input type="submit" value="提交" /><p>
    <input type="reset" value="清空" /><p>
</form>
</body>
</html>