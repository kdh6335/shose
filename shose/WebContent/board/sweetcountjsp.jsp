<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
            <!-- JSTL 라이브러리를 사용하기 위한 선언문 -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${bodylist}" var="bDto">
		좋아요 ${bDto.sweet}
	</c:forEach>

</body>
</html>