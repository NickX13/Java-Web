<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="renderer" content="webkit" />
	<title>注册_电子邮箱
	</title>






	<!-- ICON -->
	<link href="https://hwid1.vmall.com/CAS/up/idmw_rss_25/../common/images/default/favicon.ico" type="image/x-icon" rel="shortcut icon" />


	<!-- CSS -->
	<link href="css/register/dialog.css" rel="stylesheet" type="text/css">

	<link href="css/register/common.css" rel="stylesheet" type="text/css">

	<link href="css/register/zh-cn_css.css" rel="stylesheet" type="text/css">






</head>

<body class="reg themeName-red" id="loginform">


<!-- 头部  -->

<div class="head-background">
	<div class="head_center">
		<div class="main-logo adHeadPicContainer" style="width:143px"> <img src="img/register/head-top.png" class="wihteBgPic"> </div> <div class="website-name"> <b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b style="font-size: 18px;margin-top: -3px;float: left; margin-left:18px;">华为商城</b> </div>
	</div>
</div>


<div class="wp1 relative">
	<div class="register-content" id="registerForm">
		<div class="reg-tab clearFix" style="visibility: hidden;">

			<a href="javascript:void(0)" onclick="gotoRegisterByPhoneLink()" class="phone-wrap l">
				<i class="phone-icon"></i>
				<span id="tabPhone" class="tab-phone">手机号</span>
			</a>
			<a  href="javascript:void(0)" onclick="gotoRegisterByEmailLink()" class="mail-wrap l sel">
				<i class="mail-icon"></i>
				<span id="tabMail"  class="tab-email">电子邮箱</span>
			</a>


		</div>
		<div class="login r">
			已有华为帐号
			<a href="${pageContext.request.contextPath}/login" class="login-a"  title="登录">登录</a><span class="ar-eg-opposite">&gt;</span>
		</div>


		<div class="reg-detail">




			<!--邮件地址 -->
			<!--hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-->
			<form action="${pageContext.request.contextPath}/userRegisterOperation" method="post">
				<div class="input-container" id="errormsgemail-box">
					<div	class="l input-left">
						用户名
					</div>

					<div class="r input-right">

					</div>
					<div class="input-content">


						<input type="text" class="text" name="username" tabindex="1" id="username" maxlength="50" autocomplete="off" >



					</div>
				</div>
				<span id="msg_email"></span>
				<div class="short input-msgcode">
					<!-- 设置密码 -->
					<div class="set-password">

						<div class="input-container" id="pwdDiv">
							<div	class="l input-left">
								密码
							</div>


							<div class="input-content">
								<input oncut="return false;" oncopy="return false" type="password" autocomplete="off" class="pwd-input text" id="password" name="password" maxlength="32" tabindex="4">	</div>
						</div>
						<div id="msg_password" ></div>
						<div id="pwd_check_dialog"></div>

						<div class="input-container " id="confirmpwdDiv" >
							<div	class="l input-left">
								确认密码
							</div>


							<div class="input-content">
								<input oncut="return false;" oncopy="return false" id="confirmPwd" type="password" autocomplete="off" class="text vam" name="checkPassword" maxlength="32" tabindex="5">	</div>
						</div>
						<div id="msg_checkPassword" ></div>

					</div>





				</div>


		</div>
		<div id="msg_secphoneRandomCode"></div>




		<!-- 按钮 -->
		<div class="reg-btn" align="center">
			<input type="submit" class="btn btn-reg sel" id="btnSubmit"
				   value="注册" tabindex="7" />
			<div id="register_msg" style="position:relative;left:26%;"></div>
			<div id="register_msg2" class="vam error hide" style="margin-left: -60px;"></div>
		</div>
		</form>
	</div>
</div>
<div class="box-shadow"></div>
<input type="hidden" id="countryRegion" value="" />
<div id="selectCountryCodeDiv"></div>
<div id="notCurrentSiteWarning"></div>


<!-- 底部  -->

<style>

	.selectCountryImg {
		display: block;
		width: 30px;
		height: 30px;
		background: url("images/&#x2f;&#x2f;hwid1.vmall.com&#x2f;cas&#x2f;up&#x2f;idmw_rss_25&#x2f;css&#x2f;mobile&#x2f;standard_rss&#x2f;images&#x2f;down.png") no-repeat;
		background-position-y: 12px;

	}

</style>
<div class="wp1 ft">
	<div class="reg-content">
		<p class="footer">


			<a id="foot_EULA" href="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userAgreement&#x2F;zh-cn_userAgreement.html?version=china&amp;countryCode=cn" class="rule" target="_blank">华为帐号用户协议</a>
			<em class="foot_em">|</em>
			<a id="foot_privacy" href="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;accPrivacyStatement&#x2F;zh-cn_accPrivacyStatement.html?version=china" class="rule" target="_blank">关于华为帐号与隐私的声明</a>
			<span id = "faqPart" class="foot_em"><em style='font-style: normal'>|</em> <a style="padding:0 10px;" target="blank" href="https://hwid1.vmall.com/AMW/portal/faq/zh-cn_faq.html?version=china&countryCode=cn&lang=zh-cn">常见问题</a></span>




		</p>




		<p id="copyrightPart" class="footer">Copyright © 2011-2018  华为软件技术有限公司  版权所有  保留一切权利  苏B2-20070200号 | 苏ICP备09062682号-9</p>







	</div>
</div>


<!-- 		引入JS -->
<script src="js/register.js"></script>

<script src="js/swfobject.js"></script>

<script src="js/acctguard-secure.min.js"></script>

<script src="js/randomerrorcheck.js?cas20181110"></script>

</body>
</html>
