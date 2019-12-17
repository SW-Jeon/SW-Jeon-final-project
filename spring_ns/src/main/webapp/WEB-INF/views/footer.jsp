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
              <a href="${cp }/admin/adminLogin">운영자</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/admin/policy">회사정책</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/admin/info">회사소개</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/admin/info">공지사항</a>
            </li>
          </ul>
          
          <ul class="list-inline mb-2   ">
            <li class="list-inline-item mt-2">
              <a href="${cp }/pj/business">사업자 등록</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/yg/test">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/pj/review">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
          </ul>
          		
          <p class="text-muted small mb-4 mb-lg-0 mt-5">&copy; Your Website 2019. All Rights Reserved.</p>
      </div>
 </div>
</div>
