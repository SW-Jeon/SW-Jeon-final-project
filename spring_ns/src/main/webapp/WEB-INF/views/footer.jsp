<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- footer.jsp -->
 <style>
 	#foo div ul li a{font-size: 1.4em; color: #FFFFFF;}
 
 </style>
<div id="foo"> 
<div class="container " >
      <div class="col-lg-10 text-center">
          <ul class="list-inline mb-1   ">
            <li class="list-inline-item mt-3">
 			<c:choose>	
				<c:when test="${empty sessionScope.a_id}">           
                    <a href="${cp }/admin/adminLogin">운영자</a>
             	</c:when>
             	<c:otherwise>
             		<a href="${cp }/admin/adminMain">운영자</a>
             	</c:otherwise>
             </c:choose>
            </li>
            <li class="list-inline-item">&sdot;</li>
             <li class="list-inline-item">
            <c:choose>	
				<c:when test="${empty sessionScope.b_phone}">           
                    <a href="${cp }/business/businessLogin">사업자</a>
             	</c:when>
             	<c:otherwise>
             		<a href="${cp }/business/businessMain">사업자</a>
             	</c:otherwise>
             </c:choose>
             </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/admin/info">회사소개</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
          </ul>
          
          <ul class="list-inline mb-2   ">
            <li class="list-inline-item mt-2">
              <a href="${cp }/pj/business">사업자 문의</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/yg/test">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/pj/detailupload">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp}/pj/reviewlist">Privacy Policy</a>
            </li>
          </ul>
          		
          <p class="text-muted small mb-4 mb-lg-0 mt-5">&copy; Your Website 2019. All Rights Reserved.</p>
      </div>
 </div>
</div>
