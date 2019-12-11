<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta http-equiv="cache-control" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta http-equiv="pragma" content="no-cache"/>
  <meta name="subject" content="리뷰 쓰기">
  <meta name="description" content="">
  <meta name="image" content="https://s3-ap-northeast-1.amazonaws.com/mp.resources/meta_home_image.jpg">

  <meta property='fb:app_id' content='476661545693695'/>
  <meta property='og:url' content='https://www.mangoplate.com/reviews/new?restaurant_key=QykyLMvPsg'>
  <meta property='og:type' content='website'>
  <meta property='og:title' content='리뷰 쓰기'>
  <meta property='og:description' content=''>
  <meta property='og:image' content='https://s3-ap-northeast-1.amazonaws.com/mp.resources/meta_home_image.jpg'>

  <!-- Twitter Meta -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:site" content="@MangoPlate">
<meta property="twitter:url" content="https://www.mangoplate.com/reviews/new?restaurant_key=QykyLMvPsg">
<meta property="twitter:title" content="리뷰 쓰기">
<meta property="twitter:description" content="">
<meta property="twitter:image" content="https://s3-ap-northeast-1.amazonaws.com/mp.resources/meta_home_image.jpg">

  <title>리뷰 쓰기</title>

  <link rel="stylesheet" media="screen" href="/assets/dist/review_writing-498c562aaf0c0eb6d72a9742c18b031293f41e730d7e9090b62b1d890533fa68.css" />
</head>
<body>
<main class="ReviewWritingPage" data-restaurant-uuid="14388" data-restaurant-key="QykyLMvPsg">
  <header class="SimpleHeader">
  <a href="/" class="SimpleHeader__Logo" onclick="trackEvent('CLICK_HEADER_LOGO');">
    <i class="SimpleHeader__LogoIcon"></i>
  </a>
</header>


  <section class="ReviewWritingPage__Container">
    <div class="ReviewWritingPage__Row">
      <strong class="RestaurantSubMessage__RestaurantName">루틴</strong>
      <div class="RestaurantSubMessage__SubMessageWrap">
        <span class="RestaurantSubMessage__SubMessage">에 대한 솔직한 리뷰를 써주세요.</span>
      </div>
    </div>

    <div class="ReviewWritingPage__ContentWrap">
      <div class="ReviewWritingPage__FormWrap">
        <div class="ReviewWritingPage__EditorWrap">
          <div class="ReviewEditor">
            <div class="ReviewEditor__Editor__Wrap">
              <div class="ReviewWritingPage__RestaurantRecommendPickerWrap">
                <div class="RestaurantRecommendPicker">
                  <ul class="RestaurantRecommendPicker__List">
                    <li class="RestaurantRecommendPicker__Item">
                      <button class="RestaurantRecommendPicker__RecommendButton RestaurantRecommendPicker__RecommendButton--Recommend" data-recommend-type="3">
                        <i class="RestaurantRecommendPicker__Image RestaurantRecommendPicker__Image--Recommend"></i>
                        <span class="RestaurantRecommendPicker__LikeLabel">맛있다</span>
                      </button>
                    </li>

                    <li class="RestaurantRecommendPicker__Item">
                      <button class="RestaurantRecommendPicker__RecommendButton RestaurantRecommendPicker__RecommendButton--Ok" data-recommend-type="2">
                        <i class="RestaurantRecommendPicker__Image RestaurantRecommendPicker__Image--Ok"></i>
                        <span class="RestaurantRecommendPicker__LikeLabel">괜찮다</span>
                      </button>
                    </li>

                    <li class="RestaurantRecommendPicker__Item">
                      <button class="RestaurantRecommendPicker__RecommendButton RestaurantRecommendPicker__RecommendButton--NotRecommend" data-recommend-type="1">
                        <i class="RestaurantRecommendPicker__Image RestaurantRecommendPicker__Image--NotRecommend"></i>
                        <span class="RestaurantRecommendPicker__LikeLabel">별로</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </div>
              <textarea class="ReviewEditor__Editor"></textarea>
            </div>

            <p class="ReviewEditor__TextLengthStateBox">
              <span class="ReviewEditor__CurrentTextLength">0</span>
              <span class="ReviewEditor__TextLengthStateDivider">/</span>
              <span class="ReviewEditor__MaxTextLength">10000</span>
            </p>
          </div>
        </div>

        <div class="ReviewWritingPage__PictureWrap">
          <div class="ReviewPictureCounter">
            <span class="ReviewPictureCounter__CurrentLength">0</span>
            <span class="ReviewPictureCounter__Divider">/</span>
            <span class="ReviewPictureCounter__MaxLength"></span>
          </div>

          <div class="DraggablePictureContainer">
            <ul class="DraggablePictureContainer__PictureList">
              <li class="DraggablePictureContainer__PictureItem DraggablePictureContainer__PictureItem--button">
                <button class="DraggablePictureContainer__AddButton">
                  <i class="DraggablePictureContainer__AddIcon"></i>
                </button>
              </li>
            </ul>

            <div class="DraggablePictureContainer__GuideLayer">
              <span class="DraggablePictureContainer__GuideMessage">사진을 여기에 놓으세요.</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="ReviewWritingPage__ButtonsWrap">
      <button class="ReviewWritingPage__ContinueButton">나중에 이어쓰기</button>
      <div class="ReviewWritingPage__Buttons">
        <button class="ReviewWritingPage__CancelButton">취소</button>
        <button class="ReviewWritingPage__SubmitButton">리뷰 올리기</button>
      </div>
    </div>
    <div class="ReviewToolTip">
      <div class="ToolTip">
  <div class="ToolTip__Wrap">
    <i class="ToolTip__New">NEW</i>
    <p class="ToolTip__Message"></p>
    <button class="ToolTip__CloseButton"></button>
  </div>
</div>

    </div>
  </section>

  <div class="PopupConfirmLayer ReviewContinueConfirmLayer">
    <div class="PopupConfirmLayer__Container">
      <p class="PopupConfirmLayer__Description">PC웹과 모바일앱의 <span class='PopupConfirmLayer__Description__Bold'>루틴</span> 페이지에서 <span class='PopupConfirmLayer__Description__Bold'>리뷰쓰기</span>를 누르면 리뷰를 이어쓸 수 있어요.</p>

      <div class="PopupConfirmLayer__Buttons">
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__GrayButton">취소</button>
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__OrangeButton">확인</button>
      </div>
    </div>
  </div>

  <div class="PopupConfirmLayer ReviewCancelLayer">
    <div class="PopupConfirmLayer__Container">
      <p class="PopupConfirmLayer__Description">리뷰 쓰기를 취소하시겠습니까?<br/>취소 시, 작성 중이던 리뷰는 삭제됩니다.</p>

      <div class="PopupConfirmLayer__Buttons">
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__GrayButton">리뷰 계속 쓰기</button>
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__OrangeButton">리뷰 쓰기 취소</button>
      </div>
    </div>
  </div>

  <div class="ReviewDraftConfirmLayer PopupConfirmLayer">
    <div class="PopupConfirmLayer__Container">
      <p class="PopupConfirmLayer__Description"><b>작성 중이던 리뷰가 있습니다 이어서 쓰시겠습니까?</b><br />(새로쓰기를 누르면 작성중이던 리뷰는 삭제 됩니다)</p>

      <div class="PopupConfirmLayer__Buttons">
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__GrayButton">새로쓰기</button>
        <button class="PopupConfirmLayer__Button PopupConfirmLayer__OrangeButton">이어쓰기</button>
      </div>
    </div>
  </div>

  <div class="ReviewSubmitLayer">
    <i class="ReviewSubmitLayer__Emoji"></i>

    <div class="ReviewSubmitLayer__ShadowWrap">
      <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/review_submit_animation_shadow.svg" alt="layer shadow" class="ReviewSubmitLayer__Shadow"/>
    </div>
    <p class="ReviewSubmitLayer__Message"></p>
  </div>

  <div class="NoticeNotAcceptImageLayer">
    <div class="NoticeNotAcceptImageLayer__Container">
      <div class="NoticeNotAcceptImageLayer__Header">
        <i class="NoticeNotAcceptImageLayer__FaceIcon"></i>
        <h3 class="NoticeNotAcceptImageLayer__Title">사진 업로드 중에 문제가 발생했어요!</h3>
      </div>

      <div class="NoticeNotAcceptImageLayer__Content"></div>
      <button class="NoticeNotAcceptImageLayer__Button">확인</button>
    </div>
  </div>

  <div class="only-mobile">
    <div class="MangoAppDownloadView">
  <div class="MangoAppDownloadView__Image"></div>

  <div class="MangoAppDownloadView__Content">
    <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo.svg"
         class="MangoAppDownloadView__Logo"
         alt="mangoplate logo" />

    <p class="MangoAppDownloadView__Message">
      리뷰는 앱에서 작성하실 수 있습니다.
    </p>

    <button class="MangoAppDownloadView__ActionButton">
      <span class="MangoAppDownloadView__ActionButtonText">앱에서 확인하기</span>
    </button>
  </div>
</div>

  </div>
</main>

<script id="ReviewPictureTemplate" type="text/x-handlebars-template">
  <li class="DraggablePictureContainer__PictureItem DraggablePictureContainer__PictureItem--Picture ItemDraggable">
    <div class="Picture" role="button" aria-pressed="true" style="background-image: url('{{pictureUrl}}')">
      <div class="Picture__Layer ItemDraggable">
        <button class="Picture__RemoveButton Picture__UploadedContent">
          <i class="Picture__RemoveIcon"></i>
        </button>

        <i class="Picture__LoadingBar Picture__LoadingBar--Show"></i>

        <button class="Picture__ExtendButton Picture__UploadedContent">
          <i class="Picture__ExtendIcon"></i>
        </button>
      </div>
    </div>
  </li>
</script>

<script id="GalleryTemplate" type="text/x-handlebars-template">
  <div class="Gallery">
    <div class="Gallery__Container">
      <div class="Gallery__ImageWrap"></div>

      <button class="Gallery__CloseButton">
        <i class="Gallery__CloseIcon"></i>
      </button>
    </div>
  </div>
</script>


<script id="NotAcceptImageSectionTemplate" type="text/x-handlebars-template">
  <section class="NoticeNotAcceptImageLayer__ReasonItem NoticeNotAcceptImageLayer__ReasonItem--{{type}}">
    <h4 class="NoticeNotAcceptImageLayer__Reason">
      <i class="NoticeNotAcceptImageLayer__ReasonIcon"></i>
      <p>{{{title}}}</p>
    </h4>
    <ul class="NoticeNotAcceptImageLayer__FileList">

    </ul>
  </section>
</script>

<script id="NotAcceptImageSectionItemTemplate" type="text/x-handlebars-template">
  <li class="NoticeNotAcceptImageLayer__FileName">- {{fileName}}</li>
</script>

<script id="ReviewInitialData" type="application/json">
  {"mode":"WRITE","recommended_type":3,"review_text":"","picture_list":[]}
</script>
<script src="https://browser.sentry-cdn.com/4.1.1/bundle.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf-8">
  Sentry.init({dsn: 'https://36045d362ce347b8a2c56e6fa0d51fc7@sentry.io/1302030'});
</script>
<script type="text/javascript">
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
						(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
					m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-39170270-2', 'auto');
	ga('send', 'pageview');

</script>
<div class="account_terms_layer">
  <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/ojlwsg-0cpi1dz8p.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
       alt="checkbox"
       style="position:absolute;top: -9999px;display: block"
  />

  <div class="account_terms_layer_header">
    <button class="close_btn">
      <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/zva6r-2wxzbxhw_n.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
           alt="arrow">
    </button>

    <span>이용약관 동의</span>
  </div>

  <div class="account_terms_layer_content">
    <div class="account_terms_layer_content_location">
      <p class="terms_content">
        전체 동의
      </p>

      <div class="check_area">
        <button class="check_terms_btn all_terms_btn" data-ischecked="false">
          <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/24_jjq1lbdgzpdnp.png?fit=around|:&amp;crop=:;*,*&amp;output-format=png&amp;output-quality=80"
               alt="arrow"
               title=""
          />
        </button>
      </div>
    </div>

    <p class="sub_content">
      낭만식객 서비스 이용을 위해 다음의 약관에 동의해 주세요.
    </p>

    <hr class="seper_hr" />

    <ul class="account_terms_items">

    </ul>
  </div>

  <button class="account_terms_layer_ok_btn" disabled="true">확인</button>
</div>

<aside class="pop-context pg-login" style="display: none;">
  <div class="contents-box">
    <button
       class="btn-nav-close"
       onclick="mp_login_layer.close_layer();">
      닫기
    </button>

    <p class="title">로그인</p>

      <p class="message">
       로그인 하면 가고싶은 식당을 <br />저장할 수 있어요
      </p>

      <p>
        <a class="btn-login facebook"
           href="#"
           onclick="trackEvent('CLICK_LOGIN_FACEBOOK','','','PU_LOGIN');">
          <span class="text">페이스북으로 시작하기</span>
        </a>

        <a class="btn-login kakaotalk"
           href="#"
           onclick="trackEvent('CLICK_LOGIN_KAKAO','','','PU_LOGIN');">
          <span class="text">카카오톡으로 시작하기</span>
        </a>
      </p>
  </div>
</aside>

<div class="login_loading_area">
  <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/ldcyd5lxlvtlppe3.gif?fit=around|:&crop=:;*,*&output-format=gif&output-quality=80"
       alt="login loading bar"
  />
</div>

<script src="/assets/dist/vendor.all.min-4181bf59a38d53edb9f3cc2cdcd0c70c8f8d1bae1dd3134931c61ee73c329158.js"></script>
<!-- Facebook SDK -->
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script>
<script type="text/javascript">
  // \x3C/ is <
  if (!window.FB) {
    $("#facebook-jssdk").remove();
    document.write('<script id="facebook-jssdk" src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/facebook_sdk_20190510.js">\x3C/script>')
  }
</script>

<!-- Kakao SDK -->
<script src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/vi3c4twwmx7jarmu.js"></script>
<script type="text/javascript">
  // \x3C/ is <
  if (!window.Kakao) {
    document.write('<script src="//developers.kakao.com/sdk/js/kakao.min.js">\x3C/script>')
  }

  // I18n Default Setting
  if (window.I18n) {
    I18n.defaultLocale = "ko";
    I18n.locale = "ko";
  }
</script>

<script type="text/javascript" src="https://cdn.branch.io/branch-latest.min.js"></script>
<!-- Branch io SDK -->
<script type="text/javascript" charset="utf-8">
  // \x3C/ is <
  if (!window.branch) {
    document.write('<script src="/assets/vendor/branch_io.min.js">\x3C/script>')
  }
</script>

<script src="/assets/dist/review_writing.all.min-4dba9f9ff30afa73d298387e77b709a58f8ca1aa62f9f173f4445ff694d34f23.js"></script>
<!-- Start Alexa Certify Javascript -->
<script type="text/javascript">
	_atrk_opts = { atrk_acct:"hTunm1akKd60uG", domain:"mangoplate.com",dynamic: true};
	(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
</script>
<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=hTunm1akKd60uG" style="display:none" height="1" width="1" alt="alexa analytics" /></noscript>
<!-- End Alexa Certify Javascript -->

<script src="/packs/base-7abdea329c167c60d688.js"></script>

</body>
</html>
