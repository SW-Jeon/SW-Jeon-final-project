<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header.jsp -->
	 <!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<div class="col-lg-4 col-sm-4 col-md-5 order-1 order-lg-1">
				<div class="logo">
					<a href="${cp}/"><img src="${cp }/resources/images/logo/nmsk.png" alt="logo images" style="width: 300px; height: 300px;"></a>
				</div>
			</div>
		<c:choose>	
			<c:when test="${empty sessionScope.m_phone}">
				<div class="col-lg-6 col-sm-4 col-md-1 order-1 order-lg-1" >
						<div class="header__right d-flex justify-content-end"  >
							<div class="log__in" >
								<a class="accountbox-trigger btn btn-block btn-lg btn-danger"  href="#" style="width:130px; height: 50px;">
									<i class ="zmdi zmdi-account-o" style="color: white;"> Sign In</i>
								</a>
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
			</c:otherwise>
		</c:choose>
		</div>	
	</nav>

	<!-- Masthead -->
  <div class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row ">
        <div class="col-md-30 col-lg-15 col-xl-7 mx-auto">
          <form action="${cp }/findlist" method="post">
            <div class="form-row"  style="width: 800px; padding: 20px;">
              <div class="col-lg-9.5 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="Search..." name="d_addr">
              </div>
              <div class="col-lg-3.5 col-md-offset-3">
                <button type="submit" class="btn btn-block btn-lg btn-danger"><i class="fa fa-compass">검색하세요!</i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
	</div>
  </div>
  
   <!-- Login Form -->
        <div class="accountbox-wrapper">
            <div class="accountbox text-left">
                <ul class="nav accountbox__filters" id="myTab" role="tablist">
                    <li>
                        <a class="active" id="log-tab" data-toggle="tab" href="#log" role="tab" aria-controls="log" aria-selected="true">로그인</a>
                    </li>
                    <li>
                        <a id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">회원가입</a>
                    </li>
                </ul>
                <div class="accountbox__inner tab-content" id="myTabContent">
                    <div class="accountbox__login tab-pane fade show active" id="log" role="tabpanel" aria-labelledby="log-tab">
                        <form action="${cp }/memLogin"  method="post" >
                            <div class="single-input">
                                <input class="cr-round--lg" type="text"  name="m_phone"  placeholder="전화번호를 입력하세요."  required autofocus
                                   oninvalid="this.setCustomValidity('[ 전화번호 ] 를 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password"  name="m_pwd"  placeholder="비밀번호를 입력하세요."  required
                                    oninvalid="this.setCustomValidity('[ 비밀번호 ] 를 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <button type="submit" class="food__btn"><span>Go</span></button>
                            </div>
                          </form>  
                            <div class="accountbox-login__others">
                                <h6><a href="#">비밀번호 찾기</a></h6>
                                <div class="social-icons">
                                    <ul>
                                        <li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                                        <li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                        <li class="google"><a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                      
                    </div>
                    <div class="accountbox__register tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <form action="${cp }/memInsert" method="post">
                            <div class="single-input">
                                <input class="cr-round--lg"  type="tel"  name="m_phone"  placeholder="전화번호"   required autofocus
                         		oninvalid="this.setCustomValidity('번호 사이에 [ - ]를 적어주세요.')" onchange="this.setCustomValidity('')">
                            </div>
                             <div class="single-input">
                                <input class="cr-round--lg"  type="text"  name="m_name" placeholder="이름"  required
                                 oninvalid="this.setCustomValidity('꼭 [ 이름 ] 을 적어주세요.')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="email" name="m_mail" placeholder="이메일" required
                                oninvalid="this.setCustomValidity('꼭 [ 이메일 ] 를 적어주세요.')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password"  name="m_pwd"  placeholder="비밀번호"  required
                                oninvalid="this.setCustomValidity('꼭 [ 비밀번호 ] 를 적어주세요.')"  onchange="this.setCustomValidity('')">
                            </div>               
                            <div class="single-input">
                                <button type="submit" class="food__btn" ><span>Sign Up</span></button>
                            </div>
                        </form>
                    </div>
                    <span class="accountbox-close-button"><i class="zmdi zmdi-close"></i></span>
                </div>
            </div>
        </div>
        <!-- //Login Form -->

<script type="text/javascript">
	//아이디(phone) 영문,숫자 5~8자이상
	//비밀번호는 영문+숫자 8자이상

</script>
  