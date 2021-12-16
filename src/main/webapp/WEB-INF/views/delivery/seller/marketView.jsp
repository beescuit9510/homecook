<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliverySeller/marketView.css">

<!-- bootstrap css -->
<link rel="stylesheet" href="/resources/css/deliverySeller/bootstrap.css">
<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- bootstrap jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<div class="s-wrapper">
	<jsp:include page="/WEB-INF/views/common/deliveryHeader.jsp" />
		<div class="main_field" style="background-color: #fff">        	
        	<div class="main_content2">
        		
        		<div class="main_left">
        			<section class="iBMwaq">
        				<div class="kQdztO">
        					<c:forEach items="${zs.list }" var="f">
								<div class="logo_div"><img class="logo_img" src='/resources/upload/zcdSeller/${f.filename }'></div>
							</c:forEach>
        				</div>
        			</section>
        		</div>
        		
        	</div> <!-- main content -->
        </div> <!-- main field -->
				
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script>
		$(function() {
			
			
		
		});
		
	</script>
</div>
</body>
</html>