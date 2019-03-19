<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta name="renderer" content="webkit" />
<title>个人信息修改</title>

<script type="text/javascript">var pageToken = "aHseexzRQ8CHJr7t3rFsC2Qb9zCZy8gd";</script><script type="text/javascript"></script>

<link href="https://hwid1.vmall.com/CAS/up/idmw_rss_25/../common/images/default/favicon.ico" type="image/x-icon" rel="shortcut icon" /> 
<link href="css/changeUserInfo/common.css" rel="stylesheet" type="text/css">
<link href="css/changeUserInfo/common_1.css" rel="stylesheet" type="text/css">
<link href="css/changeUserInfo/zh-cn.css" rel="stylesheet" type="text/css">


</head>
<body class="login themeName-red"> 

 	<!-- 头部  -->

<div class="head-background">
	<div class="head_center">
		<div class="main-logo adHeadPicContainer" style="width:143px"> <img src="img/changeUserInfo/head-top.png" class="wihteBgPic"> </div>
		<div class="website-name"> <b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b style="font-size: 18px;margin-top: -3px;float: left; margin-left:18px;">华为商城</b> </div>
	</div>
</div> 
 	<!-- 广告位 -->
	<span><div style="background: #FFFBE4;display: block;height: 40px;text-align: center;line-height: 40px;color: #989898;"><span class="prompt_icon" id="ad1">依据《网络安全法》，为保障您的帐号安全与正常使用，请尽快绑定您的手机号，感谢您的理解及支持！</span></div></span>
	<div class="g">
		<!--登录 -->
		<div class="login-div userAccountLogin" id="loginform">
			<div class="change_info_title">
				<p>个 人 信 息 的 修 改</p>
			</div>
			<div class="bar1"></div>
			<!--form  hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-->
			<form action="changeUserInfoOperation" method="post">
			<div class="change_info_main">
				<div class="change_info_main_left">
					<!--here-->
					<div class="input-container" id="errormsgemail-box">
						<div class="l input-left">
							电话
						</div>
					<div class="r input-right">
					</div>
					<div class="input-content">
						<input type="text" placeholder="${uf.telephone}" value="${uf.telephone}" class="text"  name="userPhoneNum" tabindex="1" id="username" maxlength="50" autocomplete="off">
					</div>
					</div>
					<!--here-->
					
					<!--here-->
					<div class="input-container" id="errormsgemail-box">
						<div class="l input-left">
							性别
						</div>
					<div class="r input-right">
					</div>
					<div class="input-content">
						<input type="text" class="text" placeholder="${uf.sex}" value="${uf.sex}" name="userSex" tabindex="1" id="username" maxlength="50" autocomplete="off">
					</div>
					</div>
					<!--here-->
					
					<!--here-->
					<div class="input-container" id="errormsgemail-box">
						<div class="l input-left">
							地址
						</div>
					<div class="r input-right">
					</div>
					<div class="input-content">
						<input type="text" class="text" placeholder="${uf.address}" value="${uf.address}" name="UserAddress" tabindex="1" id="username" maxlength="50" autocomplete="off">
					</div>
					</div>
					<!--here-->
					
					<!--here-->
					<div class="input-container" id="errormsgemail-box">
						<div class="l input-left">
							余额
						</div>
					<div class="r input-right">
					</div>
					<div class="input-content">
						<input type="text" readonly="true" placeholder="${uf.money}" class="text" name="UserMoney" tabindex="1" id="username" maxlength="50" autocomplete="off">
					</div>
					</div>
					<!--here-->
					<input type="hidden" name="uid" value="${user.id}" >
					<div  class="reg-btn" align="center">
						<input type="submit" class="btn btn-reg sel" id="btnSubmit" value="确认修改" tabindex="7" />
						<div id="register_msg" style="position:relative;left:26%;"></div>
						<div id="register_msg2" class="vam error hide" style="margin-left: -60px;"></div>
					</div>
				</div>
				
			</div>
			</form>
			</div>
		</div>
		
	</div>		

	<div class="login-foot">
		<!-- 底部  -->

<div class="customer-footer">
	<div class="ft">
		<!--授权  -->
        <div class="warrant-area">
            <p style="text-align: center;line-height:20px;height:20px;">
			 
				
						<a href="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userAgreement&#x2F;zh-cn_userAgreement.html?version=china&amp;countryCode=cn" class="rule" target="_blank">华为帐号用户协议</a>            	
						<em class="foot_em">|</em>
						<a href="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;accPrivacyStatement&#x2F;zh-cn_accPrivacyStatement.html?version=china" class="rule" target="_blank">关于华为帐号与隐私的声明</a>
						<span class="foot_em"><em style='font-style: normal'>|</em> <a style="padding:0 10px;" target="blank" href="https://hwid1.vmall.com/AMW/portal/faq/zh-cn_faq.html?version=china&countryCode=cn&lang=zh-cn">常见问题</a></span>
            </p>
        	<p style="text-align: center;line-height: 12px;height:12px;margin-top: 10px ">
        	
        		
        			
        				Copyright © 2011-2018  华为软件技术有限公司  版权所有  保留一切权利  苏B2-20070200号 | 苏ICP备09062682号-9
        			
        			
        		
        	
        	</p>
        </div>
    </div>
</div>



	</div>
	<div id="layer">
		<div class="mc"></div>
	</div>
	<div id="selectCountryCodeDiv"></div>

</body>

</html>