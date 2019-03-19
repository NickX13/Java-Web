
<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <meta name="renderer" content="webkit" />
    <title>登录</title>

    <script type="text/javascript">var pageToken = "EN8Y3uznZGkJq8ujpWiYvvhJ5UHxAuuR";</script><script type="text/javascript">

</script>




    <link href="https://hwid1.vmall.com/CAS/up/idmw_rss_25/../common/images/default/favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <link href="css/login/common.css" rel="stylesheet" type="text/css">
    <link href="css/login/common_1.css" rel="stylesheet" type="text/css">
    <link href="css/login/zh-cn.css" rel="stylesheet" type="text/css">



</head>
<body class="login themeName-red">
<div id="cookies_privacy" class="center cookie hidden">
    本站点使用cookies,继续浏览表示您同意我们使用cookies。
    <a class="cookie-pro" href="#">Cookies和隐私政策></a>
    <img src="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;css&#x2F;portal&#x2F;common_rss&#x2F;images&#x2F;cookie-close.png?cas20181110"/>
</div>
<!-- 头部  -->

<div class="head-background">
    <div class="head_center">
        <div class="main-logo adHeadPicContainer" style="width:143px"> <img src="img/login/head-top.png" class="wihteBgPic"> </div> <div class="website-name"> <b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b style="font-size: 18px;margin-top: -3px;float: left; margin-left:18px;">华为商城</b> </div>
    </div>
</div>
<!-- 广告位 -->
<span><div style="background: #FFFBE4;display: block;height: 40px;text-align: center;line-height: 40px;color: #989898;"><span class="prompt_icon" id="ad1">依据《网络安全法》，为保障您的帐号安全与正常使用，请尽快绑定您的手机号，感谢您的理解及支持！</span></div></span>
<div class="g">
    <!--登录 -->
    <div class="login-div userAccountLogin" id="loginform">
        <div class="h headAdapt">

            <span class="loginTitle actived loginTitle-left" data-type="account">帐号登录</span>


        </div>
        <div class="b b-account">
            <div class="login-form-marginTop">
                <div class="form-edit-area loginEventForm">
                    <div class="userAccountLogin-errorTipsDiv"></div>
                    <!--herrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrreee-->

                    <table class="table-style" border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                        <form action="loginOperation" method="post">
                        <tr>
                            <td class="user-input-tr">
                            	<input type="text" autocomplete="off"  class="text vam" id="login_userName" name="userAccount" maxlength="50" tabindex="1" placeholder="用户名" />
                            </td>
                        </tr>

                        <tr>
                            <td class="user-input-tr">
                            	<input oncut="return false;" oncopy="return false" id="login_password" type="password" autocomplete="off"  class="text vam" name="password" maxlength="32" tabindex="2" placeholder="密码" />
                            </td>
                        </tr>
                        <tr>
                            <td id="picAuthCode" class="verify-td referenceTarget">

                            </td>
                        </tr>
                        <tr>
                            <td class="mt-links lineHeightFix" id="operLinkTd">
                                <span id="smsLoginEntrance" class="changeLoginType l" data-type="userAccountLogin" title="短信验证码登录"><i class="phoneIcon marginR6"></i>短信验证码登录</span>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <input type="submit" class="button-login-red button-login" id="btnLogin" data-type="accountLogin" value="登录" tabindex="5" />
                                <img class="load" src="https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;css&#x2F;portal&#x2F;vmall_rss&#x2F;images&#x2F;loading3.gif?cas20181110" />
                            </td>
                        </tr>
                        </form>
                        <tr>
                            <td class="mt-checkbox">
                                <span id="rememberNameSpan"><input type="checkbox" class="checkbox vam" id="remember_name" name="remember_name" tabindex="4" /><label for="remember_name"><i id="remember_name_icon" class="checkBox-icon tick-off-icon marginR6"></i>记住华为帐号</label></span>
                                <div class="hidden remeberTip"></div>
                                <span class="mt-links-float r clearWidth floatFix referenceTarget_login_more">
											<a class="btn-primary vam clearWidth" title="更多" id="btn-more">更多</a>
											<div class="set-more">
												
											</div>
										</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="mt-links p0">
                                <div class="mt-links-float vam clearWidth">


                                    <span class="regist"><a href="${pageContext.request.contextPath}/userRegister" class="btn-primary clearWidth"  onclick="gotoRegister()" title="注册帐号">注册帐号</a></span><span class="forgot"><a class="btn-primary clearWidth" href="javascript:void(0)" onclick="gotoresetpwd()" title="忘记密码？">忘记密码？</a></span>



                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
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
<script type="text/javascript">
    var jsdevswfpath = htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;js&#x2F;pc_rss&#x2F;secrisk&#x2F;JSdev.swf?cas20181110");
    var rss={
        login_js_inputaccount :htmlDecodeJQ("请输入您的帐号"),
        login_js_accountlimit :htmlDecodeJQ("帐号必须是邮件地址或手机号"),
        login_js_accountlength :htmlDecodeJQ("华为帐号限制在4~50 个字符"),
        common_js_inputpwd :htmlDecodeJQ("请输入您的密码"),
        common_js_pwdlimit :htmlDecodeJQ("密码长度为8~32个字符"),
        common_js_inputcode :htmlDecodeJQ("请输入验证码"),
        common_js_inputpiccode :htmlDecodeJQ("请输入图形验证码"),
        common_js_inputsmscode :htmlDecodeJQ("请输入短信验证码"),
        common_js_inputgeetestcode :htmlDecodeJQ("请点击按钮进行验证"),
        login_js_codeerror :htmlDecodeJQ("验证码错误"),
        common_js_ignorecase :htmlDecodeJQ("不区分大小写"),
        login_js_hwaccount :htmlDecodeJQ("手机号/邮件地址"),
        login_js_password :htmlDecodeJQ("密码"),
        login_wrong:htmlDecodeJQ("帐号或密码错误"),
        login_user_pwd_error_exceed:htmlDecodeJQ("您登录错误次数过多，请稍后重试.."),
        common_js_wrongcode:htmlDecodeJQ("验证码错误"),
        enter_authcode_title:htmlDecodeJQ("输入验证码"),

        representation_not_receive_verification_code: htmlDecodeJQ("没有收到？"),

        IGetIt:htmlDecodeJQ("确定"),
        hint:htmlDecodeJQ("提示"),
        loginOverdue:htmlDecodeJQ("当前页面已过期，请刷新当前页面后重试。"),
        overload:htmlDecodeJQ("系统繁忙，请稍后再试"),
        authcode_name:htmlDecodeJQ("验证码："),
        more_details:htmlDecodeJQ("更多详情"),
        agree_date:htmlDecodeJQ("同意日期："),
        user_agreement:htmlDecodeJQ("用户协议"),
        next_step:htmlDecodeJQ("下一步"),
        unverified_email_addr:htmlDecodeJQ("邮件地址未验证"),
        email_has_sendto:htmlDecodeJQ("验证邮件已经发送至{0}请登录邮箱检查收件箱或垃圾箱是否收到验证邮件，并按照邮件说明完成邮件地址验证。"),
        rummageEmail:htmlDecodeJQ("null"),
        resend:htmlDecodeJQ("重新获取"),
        resend_time:htmlDecodeJQ("重新获取 ({0})"),
        resend_email:htmlDecodeJQ("重新发送"),
        getAuthCode:htmlDecodeJQ("获取验证码"),
        exit:htmlDecodeJQ("取消"),
        cancel:htmlDecodeJQ("取消"),
        verify:htmlDecodeJQ("验证"),
        verified:htmlDecodeJQ("已验证"),
        verification_not_completed: htmlDecodeJQ("验证未完成。请登录邮箱检查收件箱或垃圾箱是否收到验证邮件，并且按照邮件说明完成验证。"),
        account_protect_tip:htmlDecodeJQ("帐号保护"),
        common_go_on:htmlDecodeJQ("继续"),
        uc_common_cancel:htmlDecodeJQ("取消"),

        get_activate_email_URL_Error:htmlDecodeJQ("发送激活邮件失败。"),
        btn_auth:htmlDecodeJQ("验证"),
        cancel_btn:htmlDecodeJQ("取消"),
        global_cross_site_login:htmlDecodeJQ("需要您同意当前国家/地区的隐私政策。点击同意，即表示您已阅读和同意华为&lt;a class='a-EMUI5' id='globalCrossPrivacyPolicy' target='_blank'&gt;隐私政策&lt;/a&gt;。"),
        global_cross_page_redirect:htmlDecodeJQ("当前网站不支持该帐号登录，将跳转到帐号注册国家/地区对应的网站登录。"),
        uc_common_agree:htmlDecodeJQ("同意"),
        uc_common_no_agree:htmlDecodeJQ("不同意"),
        agree_DFVersion_login:htmlDecodeJQ("为防止欺诈行为，华为需采集浏览器信息 (例如类型、时区、插件、语言、字体、canvas图片渲染哈希值、webgl图片渲染哈希值)，IP地址，您在页面上的鼠标和键盘操作信息，并使用cookie、local storage和flash cookie。"),
        agree_DFVersion_cliagree:htmlDecodeJQ("点击同意，即表示您同意上述内容及&lt;a href=&quot;{$root}/portal/agreements/userAgreement/{$lang}_userAgreement.html?version=china&quot; target=&quot;_blank&quot; class=&quot;loginAndRegLink&quot;&gt;华为帐号用户协议&lt;/a&gt;并确认您已阅读&lt;a href=&quot;{$root}/portal/agreements/userPrivacyPolicy/{$lang}_userPrivacyPolicy.html&quot; target=&quot;_blank&quot; class=&quot;loginAndRegLink&quot;&gt;华为隐私政策&lt;/a&gt;。"),
        base_agr_update_title:htmlDecodeJQ("华为帐号服务条款更新"),

        //authDialog.js
        verifyLoginPwd:htmlDecodeJQ("验证登录密码"),
        inputLingPwd:htmlDecodeJQ("请输入密码"),
        sendAuthCode:htmlDecodeJQ("获取验证码"),
        rememberBrowser:htmlDecodeJQ("记住此浏览器"),
        rememberBrowserTip:htmlDecodeJQ("下次登录无需输入验证码，清除Cookies可删除此设置。"),
        huaweiAccount:htmlDecodeJQ("华为帐号："),
        huaweiAccount_colon_space:htmlDecodeJQ("华为帐号"),
        getAuthCodeError:htmlDecodeJQ("获取验证码失败"),
        authCodeLength:htmlDecodeJQ("验证码错误"),
        smsAuthCodeLength:htmlDecodeJQ("短信验证码错误"),
        picAuthCodeLength:htmlDecodeJQ("图形验证码错误"),
        picCodeExpired:htmlDecodeJQ("图形验证码已失效"),
        verifyPwdError:htmlDecodeJQ("密码验证失败"),
        inputAuthCodeTip:htmlDecodeJQ("请输入验证码"),
        authentication:htmlDecodeJQ("需要验证您的身份"),
        emialHasSendTo:htmlDecodeJQ("邮件验证码已经发送至&lt;em class='nophonewrap userAccount'&gt;{0}&lt;/em&gt;,请登录邮箱检查收件箱或垃圾箱是否收到验证邮件,10分钟内有效"),
        phoneMegHasSendTo:htmlDecodeJQ("短信验证码已经发送至&lt;span class=&quot;nophonewrap userAccount&quot;&gt;{0}&lt;/span&gt;, 10分钟内有效"),
        getAuthCodeAgain:htmlDecodeJQ("重新获取"),
        authCodeError:htmlDecodeJQ("验证码错误"),
        autoCodeSuccess:htmlDecodeJQ("验证码正确"),
        randomCodeIsInvalid:htmlDecodeJQ("验证码已失效"),
        prompt:htmlDecodeJQ("提示"),
        iKnowBtn:htmlDecodeJQ("确定"),
        noSupportService:htmlDecodeJQ("当前网站的服务范围与您输入的帐号不匹配，系统无法为您提供服务，敬请谅解。"),

        password:htmlDecodeJQ("密码："),
        confirmPwdTips:htmlDecodeJQ("确认密码："),
        uc_useragreement_update:htmlDecodeJQ("用户协议更新"),
        uc_common_set_sec_account_failed:htmlDecodeJQ("设置失败"),

        changePwd:htmlDecodeJQ("修改密码"),
        set_newpassword:htmlDecodeJQ("设置新密码"),

        reset_pwd_format_title:htmlDecodeJQ("密码需满足以下要求："),
        pwd_format_1:htmlDecodeJQ("至少8个字符（不超过32个）"),
        pwd_format_2:htmlDecodeJQ("大写与小写字母"),
        pwd_format_3:htmlDecodeJQ("至少一个数字"),
        pwd_strength:htmlDecodeJQ("密码强度："),
        weak:htmlDecodeJQ("弱"),
        mid:htmlDecodeJQ("中"),
        strong:htmlDecodeJQ("强"),

        newPwd:htmlDecodeJQ("新密码"),
        confirmPwd:htmlDecodeJQ("再次输入新密码"),
        confirmNewPwd:htmlDecodeJQ("确认新密码"),

        pwdInputTip:htmlDecodeJQ("密码由 8-32 位字符组成，需至少包含一个大写字母、一个小写字母和一个数字，建议不与其他密码相同"),
        ok:htmlDecodeJQ("确定"),
        common_js_pwdnotsame:htmlDecodeJQ("密码与确认密码不一致"),
        common_js_confirmpwd:htmlDecodeJQ("确认密码："),
        updatePwdError:htmlDecodeJQ("修改密码失败"),
        uc_common_second_protect:htmlDecodeJQ("您已开启帐号保护，请输入验证码以完成登录。"),

        risk_auth:htmlDecodeJQ("检测到您帐号存在安全风险，请选择验证方式后获取验证码进行验证。"),
        risk_motify_pwd:htmlDecodeJQ("您帐号的密码过于简单或存在安全风险，请立即修改密码。密码由8-32位字符组成，需至少包含一个大写字母、一个小写字母和一个数字，建议不与其他密码相同。如有其他设备使用此帐号，修改密码后需重新登录，才能正常使用华为服务。"),

        uc_verify_phone_tip:htmlDecodeJQ("您的手机帐号需要验证后才可使用，待激活的手机帐号为：&lt;span class=\&quot;nophonewrap unactivephone\&quot;&gt;{0}&lt;/span&gt;"),
        uc_verify_phone:htmlDecodeJQ("验证手机"),
        setSuccess:htmlDecodeJQ("设置成功"),
        close_btn:htmlDecodeJQ("关闭"),
        uc_common_phone_use_tip:htmlDecodeJQ("该手机号可用于登录、重置密码和验证身份"),
        new_cross_login_tip:htmlDecodeJQ("您使用的本地服务将访问您注册区域的帐号信息，本地服务和您帐号注册区域不在同一区域。"),
        risk_control_high:htmlDecodeJQ("温馨提示：该帐号疑似存在安全风险，为了避免帐号被恶意使用，请进行身份验证和修改密码。"),
        risk_control_pwd:htmlDecodeJQ("温馨提示：该帐号疑似存在安全风险，为了避免帐号被恶意使用，请您修改密码。"),
        risk_control_low:htmlDecodeJQ("为了您的帐号安全，请进行身份验证。"),
        pwd_safe_tip:htmlDecodeJQ("勿使用其他帐号的密码。"),

        smsAuthCode:htmlDecodeJQ("短信验证码"),
        imgCode:htmlDecodeJQ("图形验证码"),
        emailAuthCode:htmlDecodeJQ("邮件验证码"),
        uc_common_get_auth_email_error:htmlDecodeJQ("获取验证邮件失败"),
        remeber_account_tip:htmlDecodeJQ("在公用电脑上不要选择此项，推荐在个人电脑上选择此项。"),
        error_70001201:htmlDecodeJQ("系统繁忙，请稍后再试"),
        error_70008001:htmlDecodeJQ("不可是常见密码或弱密码"),
        error_70002020:htmlDecodeJQ("新旧密码不能相同"),
        error_70002003_1:htmlDecodeJQ("旧密码输入错误"),
        error_70002016_2:htmlDecodeJQ("修改密码后，删除业务Token失败"),
        error_70002057_2:htmlDecodeJQ("输入错误次数过多，请确认后再试"),
        error_70002058_1: htmlDecodeJQ("输入错误次数过多，请24小时后重试。"),
        error_70001102_2: htmlDecodeJQ("发送邮件次数较频繁，请检查收件箱或垃圾箱是否收到验证邮件，1 小时后可重试。"),
        error_70002003:htmlDecodeJQ("帐号或者密码错误"),
        error_10000001:htmlDecodeJQ("系统繁忙，请稍后再试"),
        error_10000001_1:htmlDecodeJQ("获取验证码失败，请稍后再试"),
        error_10000001_2:htmlDecodeJQ("密码错误"),
        error_10000001_3:htmlDecodeJQ("请输入正确的帐号"),
        error_10000002:htmlDecodeJQ("不提供服务"),
        error_10000004:htmlDecodeJQ("非法操作!"),
        error_70001401:htmlDecodeJQ("系统繁忙"),
        error_70002001:htmlDecodeJQ("用户不存在"),
        error_70002028:htmlDecodeJQ("用户没有传入的手机号"),
        error_70002046:htmlDecodeJQ("手机号已经激活"),
        error_70002030:htmlDecodeJQ("短信验证码发送失败"),
        error_70001101:htmlDecodeJQ("没有权限执行此操作"),
        error_70001102_0:htmlDecodeJQ("获取验证码邮件次数较为频繁，请检查收件箱或垃圾箱是否收到验证邮件，1小时后可重试。"),
        error_70001102_1:htmlDecodeJQ("获取验证码短信次数较为频繁， 1小时后可重试。"),
        error_70001104_0:htmlDecodeJQ("获取验证码邮件次数过于频繁，请检查收件箱或垃圾箱是否收到验证邮件，24小时后可重试。"),
        error_70001104_1:htmlDecodeJQ("获取验证码短信次数过于频繁， 24小时后可重试"),
        error_70001104_3:htmlDecodeJQ("发送邮件次数过于频繁，请检查收件箱或垃圾箱是否收到验证邮件，24 小时后可重试。"),
        error_70006007_0:htmlDecodeJQ("使用该安全邮件地址的华为帐号数量已达上限"),
        error_70006007_1:htmlDecodeJQ("使用该安全手机号的华为帐号数量已达上限"),
        error_70002055:htmlDecodeJQ("用户帐号不存在"),
        error_70006006:htmlDecodeJQ("帐号不被支持"),
        error_70002002:htmlDecodeJQ("帐号已存在"),
        error_70002070:htmlDecodeJQ("密码复杂度过低"),
        error_70002057_0:htmlDecodeJQ("验证码已连续错误超过三次"),
        error_70002057_1:htmlDecodeJQ("输入的验证码错误次数过多"),
        error_70002058:htmlDecodeJQ("输入的验证码错误次数过多，请明天再试"),
        error_70002039:htmlDecodeJQ("验证码不存在或已过期"),
        error_70002073:htmlDecodeJQ("用户必须保留一个手机帐号或邮箱帐号"),
        error_70002043:htmlDecodeJQ("用户关闭手机找回密码后，不能删除仅有的一个邮箱或者安全邮箱"),
        error_70002053:htmlDecodeJQ("待删除的帐号信息不存在"),
        error_70002016:htmlDecodeJQ("删除安全邮箱帐号失败"),
        error_70002016_1:htmlDecodeJQ("变更帐号后，删除业务Token失败"),
        error_70001201_0:htmlDecodeJQ("帐号和类型不匹配"),
        error_70001201_1:htmlDecodeJQ("验证码错误"),
        error_70001201_2: htmlDecodeJQ("请稍后再试"),
        error_70002018:htmlDecodeJQ("发送激活邮件失败。"),
        error_70002019:htmlDecodeJQ("邮箱帐号已经激活。"),
        error_70002008:htmlDecodeJQ("用户没有传入email"),
        error_70002009:htmlDecodeJQ("帐号未激活"),
        error_70002058:htmlDecodeJQ("输入错误次数过多，请24小时后重试。"),
        uc_error_70002058_3:htmlDecodeJQ("输入错误次数过多，请24小时后重试。"),
        error_70002076:htmlDecodeJQ("您的帐号已冻结，若确认帐号处于安全状态，可点击&ldquo;确定&rdquo;解冻。"),
        error_70005004:htmlDecodeJQ("此帐号已被另一个同类型的第三方帐号绑定"),
        error_10000505:htmlDecodeJQ("第三方帐号绑定失败"),
        uc_change_pwd_safe_tip:htmlDecodeJQ("勿使用其他帐号的密码。"),
        uc_common_resend_email:htmlDecodeJQ("重新发送"),
        getcode_onoffline:htmlDecodeJQ("在您的受信设备上获取验证码。&lt;span id=&quot;howtodo&quot; class=&quot;a-EMUI5&quot;&gt;如何操作&lt;/span&gt;"),
        send_seccode_to_sec:htmlDecodeJQ("发送验证码至&lt;span class=&quot;nophonewrap userAccount&quot;&gt;{0}&lt;/span&gt;"),
        offline_device_problem:htmlDecodeJQ("设备处于离线状态没有收到验证码？"),
        getcode_onoffline:htmlDecodeJQ("在您的受信设备上获取验证码。&lt;span id=&quot;howtodo&quot; class=&quot;a-EMUI5&quot;&gt;如何操作&lt;/span&gt;"),
        noway_to_use_security_device:htmlDecodeJQ("无法使用安全手机号或安全邮件地址"),
        sec_code_sent_phone_email:htmlDecodeJQ("安全验证码已发送至 &lt;span class=&quot;nophonewrap userAccount&quot;&gt;{0}&lt;/span&gt;，为了您的帐号安全，请进行身份验证。"),
        no_receive_security_code:htmlDecodeJQ("没有收到安全验证码？"),
        send_code_too_many_times:htmlDecodeJQ("发送验证码的次数过多"),
        common_I_know:htmlDecodeJQ("知道了"),
        send_to_device:htmlDecodeJQ("发送验证码至设备"),
        can_not_use_sec_phone_email_tip_web:htmlDecodeJQ("如果您无法使用安全手机号或安全邮箱地址，请前往&ldquo;帐号中心&rdquo;中更改安全手机号或安全邮箱地址。"),
        can_not_use_sec_phone_tip_web:htmlDecodeJQ("如果您无法使用安全手机号，请前往&ldquo;帐号中心&rdquo;中更改安全手机号。"),
        can_not_use_sec_email_tip_web:htmlDecodeJQ("如果您无法使用安全邮箱地址，请前往&ldquo;帐号中心&rdquo;中更改安全邮箱地址。"),
        security_code_sent_xdevice:htmlDecodeJQ("安全验证码已发送至 &lt;span class=&quot;nophonewrap userAccount&quot;&gt;{0}&lt;/span&gt;，为了您的帐号安全，请进行身份验证。"),
        resetPwd_inputSecAuthCode_unableUsePhone:htmlDecodeJQ("无法使用安全手机号"),
        resetPwd_inputSecAuthCode_unableUseEmail:htmlDecodeJQ("无法使用安全邮件地址"),
        security_code_sent_other_device:htmlDecodeJQ("安全验证码已发送至您的其他设备，请输入验证码。"),
        login_error_100080041:htmlDecodeJQ("为确认是您本人操作，请完成以下验证才能登录"),
        send_code_toomany_tip:htmlDecodeJQ("请输入您最后收到的验证码或稍后重试。"),
        error_70009016: htmlDecodeJQ("设置的新密码不能与近几次历史密码相同，请重新设置"),
        get_authcode_error:htmlDecodeJQ("获取验证码错误"),
        loginUserPhone:htmlDecodeJQ("手机号"),
        emptyphone:htmlDecodeJQ("手机号为空，请正确填写"),
        phoneNumError:htmlDecodeJQ("手机号不正确"),
        smsLoginError_70001401:htmlDecodeJQ("系统繁忙，请稍后再试"),
        smsLoginError_70008805:htmlDecodeJQ("您的帐号已开启帐号保护，请使用帐号和密码登录"),
        smsLoginError_70002058:htmlDecodeJQ("输入的验证码错误次数过多，请明天再试"),
        smsLoginError_70002057:htmlDecodeJQ("验证码已连续错误超过三次"),
        smsLoginError_10000402:htmlDecodeJQ("帐号或者短信验证码错误，请重新输入"),
        appeal_label_cantReceiveByPhone:htmlDecodeJQ("无法使用手机号获取验证码？"),
        appeal_label_cantReceiveByEmail:htmlDecodeJQ("无法使用邮件地址获取验证码？"),
        appeal_label_cantReceiveByPhoneOrEmail:htmlDecodeJQ("无法使用手机号或邮件地址获取验证码？"),
        appeal_label_cantReceiveBysecPhone:htmlDecodeJQ("无法使用安全手机号获取验证码？"),
        appeal_label_cantReceiveBysecEmail:htmlDecodeJQ("无法使用安全邮件地址获取验证码？"),
        appeal_label_cantReceiveBysecPhoneOrsecEmail:htmlDecodeJQ("无法使用安全手机号或安全邮件地址获取验证码？"),
        appeal_label_appealChange:htmlDecodeJQ("申诉更改"),
        trustBrowser_label_DialogTitle:htmlDecodeJQ("是否信任此浏览器？"),
        trustBrowser_label_content:htmlDecodeJQ("若信任，当您下次登录时，系统将不会要求您提供验证码。"),
        trustBrowser_btn_trust:htmlDecodeJQ("信任"),
        trustBrowser_btn_dontTrust:htmlDecodeJQ("不信任"),
        trustBrowser_btn_remainNextTime:htmlDecodeJQ("稍后再说"),
        agree_DFVersion_Content1:htmlDecodeJQ("华为帐号是用于访问所有华为服务的帐号，在特定场景下需要收集和使用您的信息：&lt;div class=&quot;DFVersion-EMUI6&quot;&gt;&lt;span class=&quot;key_pointer&quot;&gt;&bull;  &lt;/span&gt;您注册华为帐号时提供的信息：手机号或邮件地址、华为帐号密码；&lt;/div&gt;&lt;div class=&quot;DFVersion-EMUI6&quot;&gt;&lt;span class=&quot;key_pointer&quot;&gt;&bull;  &lt;/span&gt;IP 地址；&lt;/div&gt;"),
        agree_DFVersion_Content1_info1:htmlDecodeJQ("为防止欺诈行为，华为需采集浏览器信息 (类型、时区、插件、语言、字体、canvas图片渲染哈希值、webgl图片渲染哈希值)；登录异常时，华为需采集图片验证码页面的鼠标或屏幕滑动信息，以验证身份。&lt;div class=&quot;DFVersion-EMUI6&quot;&gt;华为收集、使用信息的详情请见&lt;a href=&quot;{$root}/portal/agreements/accPrivacyStatement/{$lang}_accPrivacyStatement.html?version=china&quot; target=&quot;_blank&quot; class=&quot;DFVersion-link-EMUI6&quot;&gt;关于华为帐号与隐私的声明&lt;/a&gt;。&lt;/div&gt;"),
        agree_DFVersion_Content1_info2:htmlDecodeJQ("个人信息，包括&lt;b class=&quot;DFVersion-attentionTip&quot;&gt;手机号、邮件地址和密码&lt;/b&gt;；"),
        agree_DFVersion_Content1_info3:htmlDecodeJQ("网络信息，包括 IP 地址。"),
        agree_DFVersion_Content2:htmlDecodeJQ("上述数据将会传输并保存至中华人民共和国境内的服务器。"),
        agree_DFVersion_Content3:htmlDecodeJQ("如果您不同意我们采集上述信息，我们将无法为您提供相应的服务。"),
        agree_DFVersion_title2Login:htmlDecodeJQ("华为帐号通知更新"),
        agree_DFVersion_cancle:htmlDecodeJQ("取消"),
        reducePwd_format_1:htmlDecodeJQ("不能包含空格"),
        reducePwd_format_2:htmlDecodeJQ("至少包含8个字符"),
        reducePwd_format_3:htmlDecodeJQ("至少包含字母、数字、符号中的2种"),
        reducePwd_inputError_desc:htmlDecodeJQ("至少包含8个字符；至少包含字母、数字、符号中的2种；不能包含空格；建议勿使用其他帐号的密码")
    };

    var localInfo={
        thirdLoginUrlAddrass:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS"),
        authCodeValidate:htmlDecodeJQ(""),
        webssoLoginSessionCode:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;Captcha&#x2F;authCodeImage?session_code_key=login_session_ramdom_code_key"),
        webssoSMSLoginSessionCode:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;Captcha&#x2F;authCodeImage?session_code_key=sms_login_session_ramdom_code_key"),
        findPwd:htmlDecodeJQ("https://hwid1.vmall.com/AMW/portal/resetPwd/forgetbyid.html"),
        urlCountryCode:htmlDecodeJQ("cn"),
        submit:htmlDecodeJQ("true"),
        loginUrl:htmlDecodeJQ("https://hwid1.vmall.com/CAS/portal/login.html"),
        service:htmlDecodeJQ("https:&#x2F;&#x2F;www.vmall.com&#x2F;account&#x2F;caslogin?url=https&#37;3A&#37;2F&#37;2Fsale.vmall.com&#37;2Fnova.html&#37;3Fcid&#37;3D10618"),
        loginChannel:htmlDecodeJQ("26000000"),
        reqClientType:htmlDecodeJQ("26"),
        adUrl:htmlDecodeJQ(""),
        lang:htmlDecodeJQ("zh-cn"),
        inviterUserID:htmlDecodeJQ(""),
        inviter:htmlDecodeJQ(""),
        userID:htmlDecodeJQ(""),
        emailPng:htmlDecodeJQ("https:&amp;#x2F;&amp;#x2F;hwid1.vmall.com&amp;#x2F;CAS&amp;#x2F;up&amp;#x2F;idmw_rss_25&amp;#x2F;css&amp;#x2F;portal&amp;#x2F;register_rss&amp;#x2F;red&amp;#x2F;images&amp;#x2F;email-imp.png?cas20181110"),
        cookiePrivacyPolicyUrl:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;portal&#x2F;agreements&#x2F;cookiePrivacyPolicy&#x2F;zh-cn_cookiePrivacyPolicy.html"),
        bgImgUrl:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;ads&#x2F;login_default_bg.png"),
        currentSiteID:htmlDecodeJQ("1"),
        quickAuth:htmlDecodeJQ("false"),
        newsign:htmlDecodeJQ(""),
        cookiePrivateAgreement:htmlDecodeJQ("false"),
        globalCrossPrivacyPolicy:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userPrivacyPolicy&#x2F;zh-cn_userPrivacyPolicy.html?version=europe"),
        queryString:htmlDecodeJQ("?reqClientType=26&amp;loginChannel=26000000&amp;countryCode=cn&amp;loginUrl=https&#37;3A&#37;2F&#37;2Fhwid1.vmall.com&#37;2FCAS&#37;2Fportal&#37;2Flogin.html&amp;service=https&#37;3A&#37;2F&#37;2Fwww.vmall.com&#37;2Faccount&#37;2Fcaslogin&#37;3Furl&#37;3Dhttps&#37;253A&#37;252F&#37;252Fsale.vmall.com&#37;252Fnova.html&#37;253Fcid&#37;253D10618&amp;lang=zh-cn&amp;themeName=red"),
        requestURIQuery:htmlDecodeJQ("&#x2F;CAS&#x2F;mobile&#x2F;standard&#x2F;wapLogin.html?reqClientType=26&amp;loginChannel=26000000&amp;countryCode=cn&amp;loginUrl=https&#37;3A&#37;2F&#37;2Fhwid1.vmall.com&#37;2FCAS&#37;2Fportal&#37;2Flogin.html&amp;service=https&#37;3A&#37;2F&#37;2Fwww.vmall.com&#37;2Faccount&#37;2Fcaslogin&#37;3Furl&#37;3Dhttps&#37;253A&#37;252F&#37;252Fsale.vmall.com&#37;252Fnova.html&#37;253Fcid&#37;253D10618&amp;lang=zh-cn&amp;themeName=red"),
        accountSiteID:htmlDecodeJQ("1"),
        successImgPath:htmlDecodeJQ("https:&amp;#x2F;&amp;#x2F;hwid1.vmall.com&amp;#x2F;CAS&amp;#x2F;up&amp;#x2F;idmw_rss_25&amp;#x2F;css&amp;#x2F;portal&amp;#x2F;common_rss&amp;#x2F;images&amp;#x2F;suc.png?cas20181110"),
        representationLink:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;appealSelf&#x2F;applyChangeAccount.html?reqClientType=26&amp;loginChannel=26000000&amp;countryCode=cn&amp;loginUrl=https&#37;3A&#37;2F&#37;2Fhwid1.vmall.com&#37;2FCAS&#37;2Fportal&#37;2Flogin.html&amp;service=https&#37;3A&#37;2F&#37;2Fwww.vmall.com&#37;2Faccount&#37;2Fcaslogin&#37;3Furl&#37;3Dhttps&#37;253A&#37;252F&#37;252Fsale.vmall.com&#37;252Fnova.html&#37;253Fcid&#37;253D10618&amp;lang=zh-cn&amp;themeName=red&amp;refererPage=login"),
        isOpenApealSelf:htmlDecodeJQ("true"),
        extInfo:htmlDecodeJQ(""),
        isCurSiteOpenDeviceFinger:htmlDecodeJQ("true"),
        rememberAccount:htmlDecodeJQ( ""),
        loginSMSNum:htmlDecodeJQ( ""),
        eyeoff:htmlDecodeJQ("https://hwid1.vmall.com/CAS/up/idmw_rss_25/css/portal/vmall_rss/images/eyeoff.png?cas20181110"),
        eyeon:htmlDecodeJQ( "https://hwid1.vmall.com/CAS/up/idmw_rss_25/css/portal/vmall_rss/images/eyeon.png?cas20181110"),
        formatNo:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;css&#x2F;portal&#x2F;vmall_rss&#x2F;images&#x2F;format_no.png?cas20181110"),
        isOpenLocalCacheRisk:htmlDecodeJQ("false"),
        displayCaptchaType:htmlDecodeJQ("1"),
        formatOk:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;css&#x2F;portal&#x2F;vmall_rss&#x2F;images&#x2F;format_ok.png?cas20181110"),
        maxTimeDev:htmlDecodeJQ("1"),
        maxCountDev:htmlDecodeJQ("4"),
        recoverTimeDev:htmlDecodeJQ("30"),
        maxTimePhone:htmlDecodeJQ("1"),
        maxCountPhone:htmlDecodeJQ("4"),
        recoverTimePhone:htmlDecodeJQ("30"),
        maxTimeEmail:htmlDecodeJQ("1"),
        maxCountEmail:htmlDecodeJQ("4"),
        normalLoginTooManyTimes:htmlDecodeJQ(false),
        lastInputAccount:htmlDecodeJQ(""),
        curInputAccount:htmlDecodeJQ(""),
        curAccountSiteID:htmlDecodeJQ(""),
        recoverTimeEmail:htmlDecodeJQ("30"),
        isOpenDimensionalCode:htmlDecodeJQ("true"),
        agree_DFVersion_cliagree:htmlDecodeJQ("点击同意，即表示您同意上述内容及&lt;a href=&quot;https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userAgreement&#x2F;zh-cn_userAgreement.html?version=china&quot; target=&quot;_blank&quot; class=&quot;loginAndRegLink&quot;&gt;华为帐号用户协议&lt;&#x2F;a&gt;并确认您已阅读&lt;a href=&quot;https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userPrivacyPolicy&#x2F;zh-cn_userPrivacyPolicy.html&quot; target=&quot;_blank&quot; class=&quot;loginAndRegLink&quot;&gt;华为隐私政策&lt;&#x2F;a&gt;。"),
        getqrURL:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;DimensionalCode&#x2F;getqrWeb?appID=com.huawei.hwidweb&amp;loginChannel=7000700&amp;reqClientType=700&amp;confirmFlag=1&amp;version=26400"),
        asyncURL:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;DimensionalCode&#x2F;async?version=26400"),
        getqrContent:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;DimensionalCode&#x2F;getqrInfo?appID=com.huawei.hwidweb&amp;loginChannel=7000700&amp;reqClientType=700&amp;confirmFlag=1&amp;version=26400"),
        createQrCodeType:htmlDecodeJQ("0"),
        postRemoteLogin:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;stRemoteLogin"),
        isIfmLogin:htmlDecodeJQ(false),
        resetPwdLink:htmlDecodeJQ("?reqClientType=26&loginChannel=26000000&countryCode=cn&loginUrl=https%3A%2F%2Fhwid1.vmall.com%2FCAS%2Fportal%2Flogin.html&service=https%3A%2F%2Fwww.vmall.com%2Faccount%2Fcaslogin%3Furl%3Dhttps%253A%252F%252Fsale.vmall.com%252Fnova.html%253Fcid%253D10618&lang=zh-cn&themeName=red"),
        isOpenSMSLogin:htmlDecodeJQ("true"),
        randomCodeImgLoading:htmlDecodeJQ("https://hwid1.vmall.com/CAS/up/idmw_rss_25/css/mobile/standard_rss/images/loading.gif?cas20181110"),
        isOpenImgCode:htmlDecodeJQ("false"),
        agree_DFVersion_Content1_info1:htmlDecodeJQ("为防止欺诈行为，华为需采集浏览器信息 &#40;类型、时区、插件、语言、字体、canvas图片渲染哈希值、webgl图片渲染哈希值&#41;；登录异常时，华为需采集图片验证码页面的鼠标或屏幕滑动信息，以验证身份。&lt;div class=&quot;DFVersion-EMUI6&quot;&gt;华为收集、使用信息的详情请见&lt;a href=&quot;https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;accPrivacyStatement&#x2F;zh-cn_accPrivacyStatement.html?version=china&quot; target=&quot;_blank&quot; class=&quot;DFVersion-link-EMUI6&quot;&gt;关于华为帐号与隐私的声明&lt;&#x2F;a&gt;。&lt;&#x2F;div&gt;"),
        agree_DFVersion_Content4:htmlDecodeJQ("点击“同意”，即表示您同意上述内容及&lt;a href=&quot;https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;agreements&#x2F;userAgreement&#x2F;zh-cn_userAgreement.html?version=china&quot; target=&quot;_blank&quot; class=&quot;DFVersion-link-EMUI6&quot;&gt;华为帐号用户协议&lt;&#x2F;a&gt;。"),
        regseterLink:htmlDecodeJQ("https://hwid1.vmall.com/CAS/portal/userRegister/regbyphone.html?reqClientType=26&loginChannel=26000000&countryCode=cn&loginUrl=https%3A%2F%2Fhwid1.vmall.com%2FCAS%2Fportal%2Flogin.html&service=https%3A%2F%2Fwww.vmall.com%2Faccount%2Fcaslogin%3Furl%3Dhttps%253A%252F%252Fsale.vmall.com%252Fnova.html%253Fcid%253D10618&lang=zh-cn&themeName=red"),
        curSiteSupportSMSLoginSites: htmlDecodeJQ("1,7,8,5"),
        illnessOptype:1,
        faqLink:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;faq&#x2F;zh-cn_faq.html?version=china&amp;countryCode=cn&amp;lang=zh-cn"),
        accountChangeLink:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;appealSelf&#x2F;applyChangeAccount.html?reqClientType=26&amp;loginChannel=26000000&amp;countryCode=cn&amp;loginUrl=https&#37;3A&#37;2F&#37;2Fhwid1.vmall.com&#37;2FCAS&#37;2Fportal&#37;2Flogin.html&amp;service=https&#37;3A&#37;2F&#37;2Fwww.vmall.com&#37;2Faccount&#37;2Fcaslogin&#37;3Furl&#37;3Dhttps&#37;253A&#37;252F&#37;252Fsale.vmall.com&#37;252Fnova.html&#37;253Fcid&#37;253D10618&amp;lang=zh-cn&amp;themeName=red&amp;refererPage=login"),
        defaultAvatar: htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;CAS&#x2F;up&#x2F;idmw_rss_25&#x2F;css&#x2F;mobile&#x2F;standard_rss&#x2F;css&#x2F;images&#x2F;ic_list_account_48-48.png?cas20181110"),
        secCodeAndSecondLoginFaqUrl:htmlDecodeJQ("https:&#x2F;&#x2F;hwid1.vmall.com&#x2F;AMW&#x2F;portal&#x2F;faq&#x2F;zh-cn_secCodeAndSecondLoginFaq.html?countryCode=cn&amp;lang=zh-cn")
    };


</script>


</html>
