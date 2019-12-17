<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminLogin -->

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin  Login</title>

  <!-- Custom fonts for this template-->
  <link href="${cp }/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="${cp }/resources/admin/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">운영자 로그인</div>
      <div class="card-body">
        <form method="post" action="${cp }/admin/adLogin">
          <div class="form-group">
            <div class="form-label-group">
              <input type="text"  class="form-control"  name="a_id"  placeholder="운영자 아이디" required="required" autofocus="autofocus">
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password"  class="form-control"  name="a_pwd"  placeholder="비밀번호" required="required">
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label> <input type="checkbox" value="remember-me"> Remember Password</label>
            </div>
          </div>
            <button type="submit" class="btn btn-primary  btn-block" style="">로그인</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${cp }/resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${cp }/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${cp }/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>