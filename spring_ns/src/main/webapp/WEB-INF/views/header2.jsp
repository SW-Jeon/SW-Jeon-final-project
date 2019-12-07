<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon">NangMan</span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="${cp}/">Home<span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">Features</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
		</ul>
		
		<c:choose>	
			<c:when test="${empty sessionScope.m_phone}">
				<div class="col-lg-6 col-sm-4 col-md-1 order-1 order-lg-1" >
						<div class="header__right d-flex justify-content-end"  >
							<div class="log__in" >
								<a class="accountbox-trigger btn btn-block btn-lg btn-danger"  href="#" style="width:130px; height: 50px;">
									<i class ="zmdi zmdi-account-o" style="color: white;"> Sign In</i></a>
							</div>
						</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="col-lg-2 col-sm-4 col-md-3 order-1 order-lg-1">
					<div class="header__right d-flex justify-content-end"  >
						<a class="btn btn-block btn-lg btn-danger"  href="${cp}/memLogout"><i class ="fa fa-address-card-o"> 로그아웃</i></a>
					</div>
				</div>
				<div class="col-lg-2 col-sm-4 col-md-3 order-1 order-lg-1">
						<a class="btn btn-block btn-lg btn-danger"  href="${cp}/memUpdate?m_phone=${m_phone}"><i class ="fa fa-address-card-o"> 정보 수정</i></a>
				</div>	
				<div class="col-lg-2 col-sm-4 col-md-3 order-1 order-lg-1">
						<a class="btn btn-block btn-lg btn-danger"  href="${cp}/memList"><i class ="fa fa-address-card-o"> 회원리스트</i></a>
				</div>			
			</c:otherwise>
		</c:choose>
		</div>	

</nav>
