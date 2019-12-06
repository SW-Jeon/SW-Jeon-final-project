<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- memUpdate -->

         
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-info text-center">
				회원정보 수정
			</h3>
			<form role="form">
				<div class="form-group">
					<label for="Mail">Email address</label><input type="email" class="form-control" name="m_phone"  placeholder="전화번호" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="Mail">Email address</label><input type="email" class="form-control" name="m_name" placeholder="이름"  value="${vo.m_name}">
				</div>
				<div class="form-group">
					<label for="Mail">Email address</label><input type="email" class="form-control" name="m_mail" placeholder="이메일" value="${vo.m_mail}">
				</div>
				<div class="form-group">
					 <label for="Password">Password</label><input type="password" class="form-control" name="m_pwd"  placeholder="Password"  value="${vo.m_mail}">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</div>