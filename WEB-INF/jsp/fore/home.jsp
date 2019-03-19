
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-cn" />
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests" />
    <script>

        var domainYY   = '//yy.vmall.com';
        var domainRush = '//buy.vmall.com';

        var domainEdit = 'https://customization.vmall.com';

        var domainMain = 'https://www.vmall.com';
        var domainWap = 'https://m.vmall.com';
        var domainCart = '//cart.vmall.com';
        var domainRemark = '//remark.vmall.com';
        var domainRms = 'https://rms.vmall.com';
        var domainShoppingConfig = '//addr.vmall.com';
        var imagePath = 'https://res.vmallres.com/20181222/images';
        var domainAccount = '//www.vmall.com';
        var isUseAccount = 'false';
        var upBindPhoneAddr = 'https://hwid1.vmall.com/oauth2/userCenter/bindAccount/bindMobileAccount_1.jsp?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
        var dominWapRecycle ='https://coop.aihuishou.com/huawei?app=false';
        var domainCds = 'https://cds.vmall.com';
        var domainIps = 'https://cashier.vmall.com/cashier/voucher';
        var scriptPath = 'https://res9.vmallres.com/20181222/js';
        var domainAms ='https://act.vmall.com';
        var domainUc ='https://member.vmall.com';
        var openApiDomain='https://openapi.vmall.com';
        var addressFrontRegex = '[A-Za-z0-9０-９ａ-ｚＡ-Ｚ一-龥.?!,。？！，、；：＇＂（）［］｛｝;:&#039;&#034;()\\[\\]{}──·····．《》〈〉＜＞.《》〈〉&lt;&gt;·—＿＿＿＿＊____*□=／\/▲●～~……→＠＃@#￥％＆＊%&amp;*\\\\——－＝＼　 -]{1,}';
        var easeBuyDomain = 'https://easy.vmall.com';
        var scriptPaths = 'https://res10.vmallres.com/20181222/js';
        var dapDomain='https://dap.vmall.com';

        var pmsHttpDomain = '//product.vmall.com/';
    </script>
    <script>
        function judge_login(){
            if(${empty user})
                window.location.href="login";
            else{
                window.location.href="listCart?uid=${user.id}";
            }
        }
        function judge_logins(){
            if(${empty user})
                window.location.href="login";
            else{
                window.location.href="listOrder?uid=${user.id}";
            }
        }
        (function(){
            try
            {
                cookieGet=function(a){var f=null;if(document.cookie&&document.cookie!=""){var d=document.cookie.split(";");for(var c=0;c<d.length;c++){var b=(d[c]||"").replace(/^(\s|\u00A0)+|(\s|\u00A0)+$/g,"");if(b.substring(0,a.length+1)==(a+"=")){var e=function(i){i=i.replace(/\+/g," ");var h='()<>@,;:\\"/[]?={}';for(var g=0;g<h.length;g++){if(i.indexOf(h.charAt(g))!=-1){if(i.startWith('"')){i=i.substring(1)}if(i.endWith('"')){i=i.substring(0,i.length-1)}break}}return decodeURIComponent(i)};f=e(b.substring(a.length+1));break}}}return f};
                var uri = location.href;
                var prodReg = /\/\d+\.html/;
                var isProDetail = prodReg.test(uri);
                var isHonor = uri.indexOf(".com/honor") >0;
                var isHuawei = uri.indexOf(".com/huawei")>0;
                var isRecyle = uri.indexOf(".com/recycle")>0;
                var isNotice = uri.indexOf(".com/notice")>0;
                var isList = uri.indexOf(".com/list")>0;
                if (uri == domainMain || uri == (domainMain + "/index.html")
                    || uri == (domainMain + "/") || isProDetail|| isHonor || isHuawei||isRecyle|| isNotice||isList) {
                    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i
                            .test(navigator.userAgent)) {
                        var redirectWap = cookieGet("redirectWap");
                        if (!redirectWap == "1" && !isProDetail) {
                            if (isHonor) {
                                window.location.href = domainWap + "/honor";
                            } else if (isHuawei) {
                                window.location.href = domainWap + "/huawei";
                            } else if (isRecyle) {
                                window.location.href = dominWapRecycle;
                            } else if (isNotice) {
                                var wapUri = domainWap
                                    + uri.substring(uri.indexOf("/notice"));
                                window.location.href = wapUri;
                            } else if (isList) {
                                var wapUri = domainWap + "/category/detail"
                                    + uri.substring(uri.indexOf("/list")+5)
                                    + uri.substring(uri.indexOf("/list")+5);
                                window.location.href = wapUri;
                            } else {
                                window.location.href = domainWap;
                            }
                        } else if (!redirectWap == "1" && isProDetail) {
                            var wapUri = domainWap + '/product/' + uri.match(/\/(\d+)\.html/)[1] + '.html';
                            window.location.href = wapUri;
                        }
                    }
                }
            }catch (err){}
        })();
    </script>
    <title>华为商城（VMALL.COM）_华为手机、荣耀手机、官网正品保障</title>
    <meta name="description" content="华为商城是华为旗下面向全国服务的电子商务平台官网，我们提供正品华为手机(华为P20、荣耀V10、华为Mate10、荣耀Note10、荣耀Play、华为nova3、荣耀9i等)、平板电脑、配件等全新华为产品，品质保证！" />
    <meta name="keywords" content="华为商城,华为官网,华为手机官网,华为平板电脑,华为笔记本" />
    <meta name="mobile-agent" content="format=xhtml;url=http://m.vmall.com/">
    <meta property="wb:webmaster" content="f62bd8cc2f7d9778" />
    <link rel="shortcut icon" href="https://www.vmall.com/favicon.ico" />
    <link href="css/ec.core.base.min.css" rel="stylesheet" type="text/css">
    <link href="css/index.min.css" rel="stylesheet" type="text/css">
    <script src="js/88e9fac3c5b44b1ab92b338ec7d916c1.js" namespace="ec"></script>
    <!--[if lt IE 9]><script src="js/html5shiv.js"></script> <![endif]-->
</head>

<body class="wide">
<div class="top-banner" id="top-banner-block"></div>
<img src="picture/icon-common.png" class="hide">
<!-- 20130605-qq-彩贝-start -->
<div class="qq-caibei-bar hide" id="caibeiMsg">
    <div class="layout">
        <div class="qq-caibei-bar-tips" id="HeadShow"></div>
        <div class="qq-caibei-bar-userInfo" id="ShowMsg"></div>
    </div>
</div>
<!-- 20130605-qq-彩贝-end -->

<div class="shortcut">
    <div class="layout">
        <div class="s-sub">
            <ul>
                <li><a href="https://www.vmall.com" onclick = "pushHeaderMsg('首页','https://www.vmall.com')">首页</a></li>
                <li><a href="http://consumer.huawei.com/cn/" target="_blank" onclick = "pushHeaderMsg('华为官网','http://consumer.huawei.com/cn/')">华为官网</a></li>
                <li><a href="http://www.honor.cn/" target="_blank" onclick = "pushHeaderMsg('荣耀官网','http://www.honor.cn/')">荣耀官网</a></li>
                <li><a href="http://club.huawei.com" target="_blank" onclick = "pushHeaderMsg('花粉俱乐部','http://club.huawei.com')">花粉俱乐部</a></li>
                <li><a href="javascript:;" rel="nofollow" onclick = "pushHeaderMsgPriority('V码(优购码)','https://www.vmall.com/priority')">V码(优购码)</a></li>
                <li><a href="/company" target="_blank" onclick="pushHeaderMsg('企业购','/company')">企业购</a></li>
                <li class="s-hwep hide" id="li-enterprise-preferential"></li>
                <li><a href="javascript:;" onclick="showSelectRegion();pushHeaderMsg('Select Region','')">Select Region</a></li>
            </ul>
        </div>

        <div class="s-main ">
            <img src="picture/bg71.png" class="hide">
            <ul>
                <li id="unlogin_status">
                    <div id="top_unlogin" class="header-toolbar">
                        <!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
                        <div class="header-toolbar-item">
                            <div class="i-login">
                                <div class="h">
                                    <div class="">

                                        <c:if test="${empty user}">
                                        <script>document.write('<a id="top-index-loginUrl" href="login" rel="nofollow" onclick="pushLoginMsgInfoPerson(\'登录\',\'\')">请登录</a>');</script>
                                        <a href="userRegister" rel="nofollow" onclick = "pushLoginMsg('注册','')">&nbsp;&nbsp;注册</a>
                                        </c:if>
                                        <c:if test="${!empty user}">
                                            <script>document.write('<a id="top-index-loginUrl" href="changeUserInfo?uid=${user.id}" rel="nofollow" >${user.name}</a>');</script>
                                            <a href="loggout" rel="nofollow" onclick = "pushLoginMsg('注册','')">&nbsp;&nbsp;退出</a>
                                        </c:if>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </li>

                <li id="login_status" class="hide">
                    <div id="top_login" class="header-toolbar hide">
                        <div class="s-dropdown">
                            <div class="h h-wide" id="up_loginName-hover">
                                <a class="icon-dropdown" href="https://www.vmall.com/member?t=1546928148252" rel="nofollow" target="_blank" onclick = "pushLoginMsg('已登录','用户名')"><span id="up_loginName"></span></a>&nbsp;
                            </div>
                            <div class="b">
                                <!-- 2017-06-19-个人信息-start -->
                                <div class="dropdown-i-mall">
                                    <div class="i-mall-prompt clearfix">
                                        <div class="user-head fl">
                                            <div class="user-canvas ">
                                                <span id="user-vip-level-tips" class="icon-vip-level-0"></span>
                                                <div class="canvas-bg">
                                                    <div class="canvas-left"><div id="canvas-left" style="transform: rotateZ(-121deg);"></div></div>
                                                    <div class="canvas-right"><div id="canvas-right"></div></div>
                                                </div>
                                            </div>
                                            <img src="picture/bg71.png" class="user-img-shade">
                                            <p class="user-img">
                                                <a href="https://www.vmall.com/member?t=1546928148252timestamp" rel="nofollow" timeType="timestamp" target="_blank" onclick = "pushLoginMsg('已登录','头像')">
                                                    <img id="customerPic" src="picture/img_not_logged_in.png" alt="默认头像" imgpath="https://res.vmallres.com/20181222/images" />
                                                </a>
                                            </p>
                                        </div>
                                        <div class="user-info fl">
                                            <a href="https://www.vmall.com/member?t=1546928148252timestamp" rel="nofollow" target="_blank" onclick = "pushLoginMsg('已登录','用户名')">
                                                <div class="user-info-name" id="up_loginName_info"></div>
                                            </a>
                                            <div class="user-info-detail clearfix" id="vip-info">
                                                <a id="authentication_y" class="icon-realname hide">已实名</a>
                                                <a id="authentication_n" href="https://www.vmall.com/authmember/accesstoken" rel="nofollow" class="icon-realname disabled hide" onclick = "pushLoginMsg('已登录','未实名')">未实名</a>
                                                <a class="icon-mail" href="https://www.vmall.com/member/msg?t=1546928148252timestamp" rel="nofollow" timeType="timestamp" onclick = "pushLoginMsg('已登录','消息中心')">消息中心  <span id="top-newMsgCount" class="hide">0</span></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="i-mall-uc">
                                        <dl class="clearfix">
                                            <dt><span class="fl">我的订单</span><a class="fr" onclick ="judge_logins()" timeType="timestamp" >更多&gt;</a></dt>
                                        </dl>
                                        <div class="i-mall-uc-con">
                                            <dl class="clearfix">
                                                <dd><a href="https://www.vmall.com/member/order?t=1546928148253timestamp&tab=unpaid" timeType="timestamp" onclick = "pushLoginMsg('已登录','待支付')">待支付</a></dd>
                                                <dd><a href="https://www.vmall.com/member/order?t=1546928148253timestamp&tab=send" timeType="timestamp" onclick = "pushLoginMsg('已登录','待收货')">待收货</a></dd>
                                                <dd><a href="https://www.vmall.com/member/order?t=1546928148253timestamp&tab=nocomment" timeType="timestamp" onclick = "pushLoginMsg('已登录','待评价')">待评价</a></dd>
                                                <dd><a href="https://www.vmall.com/member/exchange?t=1546928148253timestamp" timeType="timestamp" onclick = "pushLoginMsg('已登录','退换货')">退换货</a></dd>
                                                <dd><a href="https://www.vmall.com/member/recycle/index/aihuishou?t=1546928148253timestamp" timeType="timestamp" onclick = "pushLoginMsg('已登录','旧机回收')">旧机回收</a></dd>
                                            </dl>
                                        </div>
                                    </div>

                                    <div class="i-mall-huaban">
                                        <ul class="clearfix">
                                            <li>
                                                <p class="p-img">
                                                    <a href="https://www.vmall.com/member/newpoint?t=1546928148253" target="_blank" id="point" onclick = "pushLoginMsg('已登录','积分')">
                                                        <span class="img01"></span>
                                                    </a>
                                                </p>
                                                <p class="p-dec">积分</p>
                                                <p class="p-price"><span id="userPointBalance">--&nbsp;</span></a>分</p>
                                            </li>
                                            <li>
                                                <p class="p-img">
                                                    <a href="https://www.vmall.com/member/coupon?t=1546928148253" rel="nofollow" target="_blank" onclick = "pushLoginMsg('已登录','优惠券')">
                                                        <span class="img02"></span>
                                                    </a>
                                                </p>
                                                <p class="p-dec">优惠券</p>
                                                <p class="p-price"><span id="top-couponCount">--&nbsp;</span>张</p>
                                            </li>
                                            <li>
                                                <p class="p-img">
                                                    <a href="https://www.vmall.com/member/balance?t=1546928148253" rel="nofollow" target="_blank" onclick = "pushLoginMsg('已登录','代金券')">
                                                        <span class="img03"></span>
                                                    </a>
                                                </p>
                                                <p class="p-dec">代金券</p>
                                                <p class="p-price"><span id="balanceAmount">--&nbsp;</span>元</p>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="i-out">
                                        <a href="https://www.vmall.com/account/logout" rel="nofollow">退出登录</a>
                                    </div>
                                </div>
                                <!-- 2017-06-19-个人信息-end -->
                            </div>
                        </div>
                    </div>
                </li>

                <!-- <li><a href="https://www.vmall.com/member/order?t=1546928148253timestamp" timeType="timestamp" onclick = "pushMyOrderMsg()">我的订单</a></li>-->
                <li><a   timeType="timestamp" onclick = "judge_logins()">我的订单</a></li>

                <li>
                    <div class="s-dropdown s-dropdown-link">
                        <div class="h">
                            <a class="icon-dropdown">客户服务</a>
                        </div>
                        <div class="b" >
                            <div class="dropdown-more">
                                <dl>
                                    <dt><a href="https://www.vmall.com/help/index.html" target="_blank">帮助中心</a></dt>
                                    <dt><a href="http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af" target="_blank">联系客服</a></dt>
                                </dl>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="s-dropdown">
                        <div class="h">
                            <a href="#" target="_blank" class="icon-dropdown">网站导航</a>
                        </div>
                        <div class="b">
                            <div class="dropdown-navs clearfix">
                                <style> .shortcut .dropdown-navs .dropdown-navs-icon:hover {color: #cb242b;}</style><p><a href="https://www.vmall.com"></a></p><div class="dropdown-navs-icon"><a href="https://www.vmall.com">商城首页</a></div><p><br/></p><dl><dt>频道</dt><dd><div class="item"><a href="https://www.vmall.com/huawei" target="_blank">华为专区</a></div><div class="item"><a href="https://www.vmall.com/honor" target="_blank">荣耀专区</a></div><div class="item"><a href="http://company.vmall.com/client.html" target="_blank">企业购</a></div></dd></dl><dl><dt>产品</dt><dd><div class="item"><a href="https://www.vmall.com/list-36" target="_blank">手机</a></div><div class="item"><a href="https://www.vmall.com/list-43" target="_blank">智能家居</a></div><div class="item"><a href="https://www.vmall.com/list-40" target="_blank">平板&amp;笔记本</a></div><div class="item"><a href="https://www.vmall.com/list-54" target="_blank">通用配件</a></div><div class="item"><a href="https://www.vmall.com/list-59" target="_blank">智能穿戴</a></div><div class="item"><a href="https://www.vmall.com/list-47" target="_blank">专属配件</a></div></dd></dl><dl><dt>增值服务</dt><dd><div class="item"><a href="https://www.vmall.com/recycle" target="_blank">以旧换新</a></div><div class="item"><a href="https://www.vmall.com/product/10086344499475.html#10086230774569" target="_blank">礼品包装</a></div><div class="item"><a href="https://www.vmall.com/order/tcsProductIndex" target="_blank">补购保障</a></div><div class="item"><a href="https://www.vmall.com/order/batteryRenew" target="_blank">99元换电池</a></div></dd></dl><dl><dt>会员</dt><dd><div class="item"><a href="https://www.vmall.com/privilege" target="_blank">会员频道</a></div></dd></dl>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="downloadApp">
                    <div class="s-dropdown">
                        <div class="h">
                            <a class="icon-dropdown">手机版</a>
                        </div>
                        <div class="b"><div class="dropdown-code"><div class="clearfix dropdown-code-detail" style="border-bottom:1px solid #e5e5e5;padding-bottom:20px;margin-bottom:20px;">  <a href="https://www.vmall.com/appdownload" target="_blank" onclick="pushHeaderMsg(&#39;下载客户端img&#39;,&#39;https://www.vmall.com/appdownload&#39;)">                                        <img src="picture/vdxkxujlneywa82x5bbx.jpg" class="code-img" />                                    </a><div class="code-info"><h2>华为商城APP</h2><p class="red">新人专享好礼<br />最高5000积分</p>                                        <span class="icon-andrid"></span>                                    </div>                                </div>                                <div class="clearfix dropdown-code-detail">                                    <a>                                        <img src="picture/zyczwpf1z8ih80u7fis9.jpg" class="code-img" />                                    </a>                                    <div class="code-info">                                        <h2>华为商城公众号</h2><p>微信扫一扫</p>                                        <span class="icon-wechat"></span>                                    </div>                                </div>  <div class="clearfix dropdown-code-detail">   <a>                                        <img src="picture/6y7sw4v4hnj9kl9fdc9d.jpg" class="code-img" />                                    </a>                                    <div class="code-info">                                        <h2>微信小程序</h2><p>微信扫一扫</p>                                        <span class="icon-wechat"></span>                                    </div>                                                        </div></div></div>
                    </div>
                </li>


                <li>
                    <div class="s-dropdown s-dropdown-minicart">
                        <div class="h h-wide" id="header-toolbar-minicart">
                            <a   class="icon-minicart" rel="nofollow" timeType="timestamp"  onclick ="judge_login()">
                                <span>购物车(<span id="header-cart-total">0</span>)</span>
                            </a>
                        </div>
                        <%--<div class="b" id="header-toolbar-minicart-content">--%>
                            <%--<!-- 2017-06-19-迷你购物车-start -->--%>
                            <%--<div class="dropdown-minicart">--%>
                                <%--<div class="minicart-pro-empty minicart-pro-empty-index" id="minicart-pro-empty">--%>
                                    <%--<p><span class="icon-minicart"></span></p>--%>
                                    <%--<p id="cartInfo" >您的购物车是空的，赶紧选购吧~</p>--%>

                                <%--</div>--%>
                                <%--<div class="minicart-pro-list minicart-pro-list-scroll hide" id="minicart-pro-list-block">--%>
                                    <%--<ul class="minicart-pro-list" id="minicart-goods-list"></ul>--%>
                                    <%--<div class="minicart-pro-settleup" id="minicart-pro-settleup">--%>
                                        <%--<p>--%>
                                            <%--<span>总计：</span>--%>
                                            <%--<span><b id="micro-cart-totalPrice">&yen;&nbsp;0</b><s id="micro-cart-totalOriginPrice">&yen;&nbsp;0</s></span>--%>
                                        <%--</p>--%>
                                        <%--<a class="button-minicart" id="button-minicart-go2confirm" href="javascript:;" onclick="ec.minicart.confirm()" >结算</a>--%>
                                        <%--<a class="button-minicart disabled" id="disbutton-minicart-go2confirm" style="display:none;">结算</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<!-- 2017-06-19-迷你购物车-end -->--%>
                        <%--</div>--%>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 2017-06-19-捷径栏-end -->

<textarea id="selectRegion-tips" style="display: none;">
<!-- 20151105-全球语言弹出框-width:910px-start -->
<div class="box-content"><div class="box-lan-choose"><dl><dt>Asia Pacific</dt><dd class="box-button"><a class="box-choose" href="http://www.vmall.hk/">香港</a><a class="box-choose" href="https://www.hihonor.com/in/">India</a><a class="box-choose" href="https://www.hihonor.com/my/">Malaysia</a></dd></dl><dl class="box-lan-choose-area"><dt>The United States</dt><dd class="box-button"><a class="box-choose" href="https://www.hihonor.com/us/">United States</a></dd></dl><dl class="box-lan-choose-area"><dt>Europe</dt><dd class="box-button"><a class="box-choose" href="https://www.honor.ru/">Россия</a><a class="box-choose" href="https://www.hihonor.com/fr/">France</a><a class="box-choose" href="https://www.hihonor.com/de">Deutschland</a><a class="box-choose" href="https://www.hihonor.com/it/">Italia</a><a class="box-choose" href="https://www.hihonor.com/es/">España</a><a class="box-choose" href="https://www.hihonor.com/uk/">UK</a></dd></dl><dl class="box-lan-choose-area"><dt>Middle East</dt><dd class="box-button"><a href="http://www.vmall.hk/" target="_self" textvalue="Saudi Arabia"></a><a class="box-choose" href="https://www.hihonor.com/ae-en/">United Arab Emirates</a><a class="box-choose" href="https://www.hihonor.com/sa-en/">Saudi Arabia</a></dd></dl></div></div>
    <!-- 20151105-全球语言弹出框-width:910px-end -->
</textarea>
<input type="hidden" value="" id="context"/>
<input type="hidden" value="https://member.vmall.com" id="domainUc"/>
<input type="hidden" value="vmall_index" id="vmall_index"/>

<script type="text/javascript">

    function pushLoginMsg(name,subName)
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "subName":subName ,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000201",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000201", "link", value]);
    }
    function pushLoginMsgInfoPerson(name,subName)
    {
        ec.account.afterLogin(function(){});
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "subName":subName ,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000201",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000201", "link", value]);
    }
    function pushHeaderMsgPriority(name,url)
    {
        ec.account.afterLogin(function(){window.location.href="https://www.vmall.com/priority";});
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "URL":url,
                    "click":"1",
                }
        };
        ec.account.dapPushMsg("300000101",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000101", "link", value]);
    }

    function pushHeaderMsg(name,url)
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "URL":url,
                    "click":"1",
                }
        };
        ec.account.dapPushMsg("300000101",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000101", "link", value]);
    }

    $('.shortcut .s-main .s-dropdown').each(function() {
        var catname = $(this).find('.icon-dropdown').text();
        var mdap = function(name, url, category) {
            var value = {
                "UID": ec.util.cookie.get("uid"),
                "TID": getPtid(),
                "TIME": getTime(),
                "CONTENT": {
                    "name": name,
                    "URL": url,
                    "click": "1",
                    "category": category
                }
            };
            ec.account.dapPushMsg("300000101", value, "click");
            ec.code.addAnalytics({
                hicloud: true
            });
            _paq.push(["trackLink", "300000101", "link", value]);
        };
        if ('客户服务' === catname) {
            $(this).find('dt a').bind('click', function() {
                mdap($(this).text(), $(this).attr('href'), catname);
            });
        }
        if ('网站导航' === catname) {
            $(this).find('dd a').bind('click', function() {
                mdap($(this).text(), $(this).attr('href'), catname);
            });
        }
    });

    checkIEVersion();
    ec.mediaPath = "https://res.vmallres.com/pimages/";
    //document.write('<script src="js/c617cdcc1a134e4781a94f5a519e4d2d.js'+(new Date()).getTime()+'"></s' + 'cript>');
</script>

<textarea id="micro-cart-tpl" class="hide">
<!--#macro microCartList data-->
    <!--#list data.itemInfos as item-->
    <!--#var classChoose='';-->





    <!--#var skuId='#'+item.skuId;-->



    <!--#if (item.subItems && item.subItems.length > 0)-->
    <!--#list item.subItems as sub-->
    <!--#if ((classChoose) && (classChoose != "true")  )-->
    <!--#var  classChoose='false';-->

    <!--/#if-->
    <!--#if (sub.itemType == 'S1' || sub.itemType == 'S6')-->
    <!--#var  classChoose='true';-->
    <!--#else-->
    <!--/#if-->
    <!--#if (sub.itemType == 'G' )-->
    <!--#var gGift='true';-->
    <!--/#if-->
    <!--#if (sub.itemType == 'J' )-->
    <!--#var jBuy='true';-->
    <!--/#if-->
    <!--/#list-->
    <!--/#if-->

    <!--#if (classChoose == 'true' )-->
        	    <li class="minicart-pro-item minicart-pro-item-suit <!--#if ( (item.show))-->disabled<!--/#if-->">
            <!--#else-->
                <li class="minicart-pro-item <!--#if ( (item.show)) -->disabled<!--/#if-->">
            <!--/#if-->

            <div class="pro-info clearfix">
           	<!--#if (item.itemType=='B')-->


                <!--#if (item.invalidCauseReason == 0) -->
                        <div class="p-choose"><i class="<!--#if (item.selected)-->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.itemCode}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i></div>
                        <input class="hide" id="checkbox-{#item.itemkd}" name="bundleIds" value="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if--> />
                        <input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" <!--#if (item.selected)-->checked="checked"<!--/#if--> />
                <!--#elseif ((item.invalidCauseReason == 7)&&( !item.numblimit   )&&(!item.show) )-->
                         <div class="p-choose"><i class="<!--#if (item.selected)-->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.itemCode}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i></div>
                        <input class="hide" id="checkbox-{#item.itemkd}" name="bundleIds" value="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if--> />
                        <input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" <!--#if (item.selected)-->checked="checked"<!--/#if--> />
                <!--#else-->
                        <div class="p-choose"><i class="icon-choose-normal" id="icon-choose-{#item.itemCode}"></i></div>
                        <input class="hide" id="checkbox-{#item.itemCode}" name="bundleIds" value="{#item.itemCode}" type="checkbox" />
                        <input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" />
                <!--/#if-->

                    <div class="p-img">
                        <a href="/product/{#item.photoId}.html{#skuId}" title="" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.photoId}.html{#skuId}','{#item_index+1}')">
                            <img src="picture/{#item.photopath}78_78_{#item.photoname}" alt="{#item.itemName}" />
                        </a>
                    </div>

                    <div class="p-name">
                        <a href="/product/{#item.photoId}.html{#skuId}" title="{#item.itemName}" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.photoId}.html{#skuId}','{#item_index+1}')">{#item.itemName}</a>
                    </div>


                <!--#else-->
                <!--#if ((item.invalidCauseReason == 0) &&(!item.bnumblimit) &&(!item.numblimit)) -->

                        <div class="p-choose">
                        <!--#if (item.itemType == "P") -->
                        <i class="<!--#if (item.selected) -->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i>
                         <input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if-->>
                            <!--#else-->
                        <i class="<!--#if (item.selected) -->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i>
                        <input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if-->>
                            <!--/#if-->
                        </div>

                        <input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" <!--#if (item.selected)-->checked="checked"<!--/#if--> />

                <!--#elseif ((item.invalidCauseReason == 7)&&( !item.numblimit  )&&(!item.show) )-->

                                  <div class="p-choose">
                        <!--#if (item.itemType == "P") -->
                        <i class="<!--#if (item.selected) -->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i>
                         <input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if-->>
                                      <!--#else-->
                        <i class="<!--#if (item.selected) -->icon-choose<!--#else-->icon-choose-normal<!--/#if-->" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"></i>
                        <input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" <!--#if (item.selected)-->checked="checked"<!--/#if-->>
                                      <!--/#if-->
                        </div>

                        <input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" <!--#if (item.selected)-->checked="checked"<!--/#if--> />


                <!--#else-->
                        <div class="p-choose"><i class="icon-choose-normal" id="icon-choose-{#item.skuId}"></i></div>
                        <input class="hide" name="skuIds" id="checkbox-{#item.skuId}" value="{#item.skuId}" type="checkbox" />
                        <input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" />
                <!--/#if-->

                <!--#if ((item.attrsMap)&&(item.attrsMap.package_code)) -->
        			 <input class="hide" name="newBundle" id="bundle-{#item.itemkd}" value="{#item.attrsMap.package_code}" data-scode="<!--#list item.subItems as sku--><!--#if ((sku.itemType=='B')||(sku.itemType=='P'))-->{#sku.itemCode},<!--/#if--><!--/#list-->" type="checkbox" />
                <!--/#if-->


                 	 <div class="p-img">
                        <a href="/product/{#item.productId}.html{#skuId}" title="" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.productId}.html{#skuId}','{#item_index+1}')">
                            <img src="picture/{#item.photopath}78_78_{#item.photoname}" alt="{#item.itemName}" />
                        </a>
                    </div>

                    <div class="p-name">
                        <a href="/product/{#item.productId}.html{#skuId}" title="{#item.itemName}" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.productId}.html{#skuId}','{#item_index+1}')">{#item.itemName}</a>
                    </div>
                <!--/#if-->
                    <div class="p-dec">
                        <span class="p-slogan">

                        </span>
                    </div>
                    <div class="p-status">

                        <!--#if (gGift == "true") -->
                        <!--#list item.subItems as gif-->
                        <!--#if (gif.itemType=="G")-->
                        <input type="checkbox" name="giftId" class="hide" value="{#gif.itemCode}" />
                        <!--/#if-->
                        <!--/#list-->
                        <!--/#if-->

                        <!--#if (   (item.showP)&&( (item.invalidCauseReason==0) ||  ( (item.invalidCauseReason==7)  && (  !item.numblimit  )  )  )    ) -->
 						<div class="p-tags">此商品已失效</div>
                        <!--#else-->
                        <!--#if (item.invalidCauseReason == 1) -->
                        <div class="p-tags">此商品已失效</div>
                        <!--#elseif (item.invalidCauseReason == 2) -->
                        <div class="p-tags">此商品已失效 </div>
                        <!--#elseif (item.invalidCauseReason == 3) -->
                        <div class="p-tags">此商品已失效 </div>
                        <!--#elseif (item.invalidCauseReason == 4) -->
                        <div class="p-tags">此商品已失效 </div>
                        <!--#elseif (item.invalidCauseReason == 5) -->
                        <div class="p-tags">此商品暂不可购买 </div>
                        <!--#elseif (item.invalidCauseReason == 6) -->
                        <div class="p-tags">此商品暂时缺货 </div>
                        <!--#elseif (item.invalidCauseReason == 7) -->
                        <div class="p-tags">此商品限购{#item.invalidCauseLeftValue}件</div>
                        <!--#elseif (item.invalidCauseReason == 8) -->
                        <div class="p-tags">超过内购限额 </div>
                        <!--#elseif (item.invalidCauseReason == 9) -->
                        <div class="p-tags">此商品不在本渠道销售</div>
                        <!--#elseif (item.invalidCauseReason == 10) -->
                        <div class="p-tags">此商品已失效 </div>
                        <!--/#if-->
                        <!--/#if-->

                        <div class="p-price">
                            <!--#if (item.salePrice != item.originalPrice) --><s>&yen;&nbsp;{#item.originalPrice.toFixed(2)}</s>&nbsp;&nbsp;<!--/#if-->
                            <b>&yen;&nbsp;{#item.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.qty}</span></strong>
                        </div>
                    </div>
                </div>

                    <!--#if ((item.itemType=='B')||(item.itemType=='P'))-->
					<div class="p-pack <!--#if (item.show) -->disabled<!--/#if-->">
                    <span class="p-mini-tag-suit">套餐</span>
                    <a href="javascript:;" title="<!--#list item.subItems as sku--><!--#if ((sku.itemType=='B')||(sku.itemType=='P'))-->{#sku.itemName}x{#sku.qty}<!--/#if--><!--/#list-->">
                        <!--#list item.subItems as sku-->
                        <!--#if ((sku.itemType=='B')||(sku.itemType=='P'))-->
                        <span>
                        {#sku.itemName}<em>x{#sku.qty}</em>
						</span>
                        <!--/#if-->
                        <!--/#list-->
                    	</a>
                	</div>
                    <!--/#if-->




                    <!--#if ((classChoose=='true') || (jBuy=='true'))-->
                <div class="pro-other clearfix" id={#classChoose}>
                    <ol>
					    <!--#list item.subItems as sub-->
                        <!--#if (sub.itemType == "S1") -->

                        <li class="<!--#if (sub.invalidCauseReason != 0) -->disabled<!--/#if-->">
                            <div class="p-title">
                                <span class="p-mini-tag-long">延保</span>{#sub.itemName}
                            </div>
                            <input class="hide" name="extendIds" value="{#sub.skuId}" data-scode="{#sub.itemCode}" type="checkbox" data-id="{#sub.itemId}" />
                            <div class="p-price"><b>&yen;&nbsp;{#sub.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.qty}</span></strong></div>
                        </li>

                        <!--/#if-->
                        <!--/#list-->

                        <!--#list item.subItems as sub-->
                        <!--#if (sub.itemType == "S6") -->

                        <li class="<!--#if (sub.invalidCauseReason != 0) -->disabled<!--/#if-->">
                            <div class="p-title">
                                <span class="p-mini-tag-extend">碎屏保</span>{#sub.itemName}
                            </div>
                            <input class="hide" name="accidentIds" value="{#sub.skuId}" data-scode="{#sub.itemCode}" data-id="{#sub.itemId}" type="checkbox" />
                            <div class="p-price"><b>&yen;&nbsp;{#sub.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#item.qty}</span></strong></div>
                        </li>

                        <!--/#if-->
                        <!--/#list-->

                        <!--#if (jBuy=="true")-->
                        <input type="hidden" id="preferIds_{#item.skuId}"
                               value="<!--#list item.subItems as ea--><!--#if (ea.itemType == "J") -->{#ea.itemCode},<!--/#if--><!--/#list-->"
                        skuids="<!--#list item.subItems as ea--><!--#if (ea.itemType == "J") -->{#ea.skuId},<!--/#if--><!--/#list-->"
                        newId="<!--#list item.subItems as ea--><!--#if (ea.itemType == "J") -->{#ea.itemId},<!--/#if--><!--/#list-->" />
                        <!--/#if-->

                        <!--#list item.subItems as sub-->
                        <!--#if (sub.itemType == "J") -->

                        <li class="<!--#if ((sub.Jlost)||(sub.invalidCauseReason!=0)) -->disabled<!--/#if-->">
                            <div class="p-title p-add">
                                <span class="p-mini-tag-extend">加价购</span>{#sub.itemName}
                            </div>
                            <div class="p-price">
                                <!--#if (sub.salePrice != sub.originalPrice) --><s>&yen;&nbsp;{#sub.originalPrice.toFixed(2)}</s>&nbsp;&nbsp;<!--/#if-->
                                <b>&yen;&nbsp;{#sub.salePrice.toFixed(2)}</b><strong><em>x</em><span>{#sub.qty}</span></strong>
                            </div>
                        </li>

                        <!--/#if-->
                        <!--/#list-->

      				</ol>
      			</div>
                    <!--/#if-->

                    <!--#if (gGift=="true")-->
                <input type="hidden" id="gift_sbomCodes_{#item.skuId}" value="<!--#list item.subItems as gift--><!--#if (gift.itemType == "G") -->{#gift.skuId},<!--/#if--><!--/#list-->" />
                <div class="p-pack">
                    <span class="p-mini-tag-suit">配</span>
                    <a href="javascript:;" style="cursor: default;" title="<!--#list item.subItems as gift--><!--#if (gift.itemType == "G") -->{#gift.itemName}x{#gift.qty*item.qty},<!--/#if--><!--/#list-->">
                    <!--#list item.subItems as gift--><!--#if (gift.itemType == "G") -->
                        <span class="<!--#if (gift.invalidCauseReason != 0) -->disabled<!--/#if-->">
                        {#gift.itemName}<em>x{#gift.qty*item.qty}</em>
                        </span>
                    <!--/#if-->
                    <!--/#list-->
                    </a>
                </div>
                    <!--/#if-->

            </li>




    <!--/#list-->
    <!--/#macro-->
</textarea>

<textarea class="hide" id="ec-binding-phone">
    <div id="ec-binding-phone-1" class="ec-binding-phone-box hide">
        <!-- 20141011-绑定安全手机号提示-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号，<em class="red">不绑定将不能提交订单。</em></p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-1"><span>立即绑定</span></a></a>
        </div>
        <!-- 20141011-绑定安全手机号提示-end -->
    </div>
    <div id="ec-binding-phone-2" class="ec-binding-phone-box hide">
        <!-- 20141424-绑定安全手机号提示-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>请您在新打开的页面中完成绑定安全手机号操作，完成绑定后请根据您的情况点击下面的按钮。</p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="javascript:;" id="ec-binding-phone-url-2"><span>重新绑定</span></a>
            <a class="box-ok" href="javascript:;" onclick="ec.binding.resetShow()"><span>绑定成功</span></a>
        </div>
        <!-- 20141424-绑定安全手机号提示-end -->
    </div>
    <div id="ec-binding-phone-3" class="ec-binding-phone-box hide">
        <!-- 20141424-安全手机号绑定提示失败-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">对不起，您未成功绑定手机号</p>
                <p>为了您在商城正常购物、保护您的权益，请您绑定一个手机号码以享受华为商城的所有服务。</p>
            </div>
        </div>
        <div class="box-button">
            <a href="javascript:;" class="box-ok" onclick="ec.binding.showOk()" id="ec-binding-phone-url-3" ><span>立即绑定</span></a>
        </div>
        <!-- 20141424-安全手机号绑定提示失败-end -->
    </div>
    <div id="ec-binding-phone-4" class="ec-binding-phone-box hide">
        <!-- 20150824-手机号绑定未绑定-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号；<em class="red">自</em><em id="bindEndDate4State4" class="red"></em><em class="red">号起，若不绑定将不能提交订单。</em></p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="javascript:;" onclick="ec.binding.closeState4();"><span>下次再说</span></a>
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-4"><span>立即绑定</span></a>
        </div>
        <!-- 20150824-安全手机号绑定提示失败-end -->
    </div>
    <div id="ec-binding-phone-5" class="ec-binding-phone-box hide">
        <!-- 20141424-安全手机号绑定提示失败-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>您输入的手机已被注册，您可以选择使用手机号重新登录或者重新绑定手机！</p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="https://www.vmall.com/account/login" id="ec-binding-phone-reLogin-5"><span>重新登录</span></a>')
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-5"><span>重新绑定</span></a>
        </div>
        <!-- 20141424-安全手机号绑定提示失败-end -->
    </div>
</textarea>
<script type="text/javascript" id="miniCartToken"></script><!-- 2017-02-15-头部-start -->
<div class="header">
    <div class="layout">
        <div class="left">
            <!-- 2017-02-15-logo-start -->
            <div class="logo"><a href="https://www.vmall.com/index.html" title="Vmall.com - 华为商城" onclick = "pushIndexLogoClickMsg('picture/sxppnesyv4k11dbxdfc2.png','https://www.vmall.com/index.html')"><img src="picture/sxppnesyv4k11dbxdfc2.png" alt="Vmall.com - 华为商城"/></a></div>
            <!-- 2017-02-15-logo-end -->

            <!-- 2017-06-19-导航-start -->
            <div class="naver">
                <ul class="clearfix">
                    <ul id="naver-list">
                        <li class="img" id="huawei">
                            <a href="https://www.vmall.com/huawei" target="_blank">
                                <img src="picture/grguiqzhenwvyhywyhbm.png">
                            </a>
                        </li>
                        <li class="img" id="honor">
                            <a href="https://www.vmall.com/honor" target="_blank">
                                <img src="picture/ahwtufrpdsqyuiz7tljz.png">
                            </a>
                        </li>
                        <li id="huawei">
                            <a href="https://sale.vmall.com/hwmate.html"

                               target="_blank">

                                <span>Mate 20系列</span>
                            </a>
                        </li>
                        <li id="honor">
                            <a href="https://www.vmall.com/product/10086134839130.html"

                               target="_blank">

                                <span>荣耀V20</span>
                            </a>
                        </li>
                        <li id="huawei">
                            <a href="https://sale.vmall.com/huawei.html"

                               target="_blank">

                                <span>开门红</span>
                            </a>
                        </li>
                        <li id="honor">
                            <a href="https://www.vmall.com/product/10086785341226.html"

                               target="_blank">

                                <span>荣耀10</span>
                            </a>
                        </li>
                    </ul>
                    <script>
                        $(function () {
                            $('#naver-list li').hover(function () {
                                $(this).addClass('hover');
                            },function () {
                                $(this).removeClass('hover');
                            });

                        });
                    </script>
                </ul>
            </div>
            <!-- 2017-06-19-导航-end -->
        </div>

        <div class="right">
            <!-- 2017-02-15-搜索条-焦点为search-form增加className:hover -start -->
            <div class="search-bar relative" id="searchBar-area">
                <div class="search-bar-form" id="search-bar-form">
                    <form action="${pageContext.request.contextPath}/search" method="post">
                        <input type="text" class="text" maxlength="200" name="name" id="search-kw" autocomplete="off"/>
                        <input type="submit" class="button" value="搜索" />
                        <input type="hidden" id="channelType" name="channelType" value="0"/>
                        <input type="hidden" id="default-search" value="nova 3i|荣耀 Note10"/>
                    </form>
                </div>
                <div class="search-bar-key" id="search-bar-key">
                    <div class="searchBar-key">
                        <a href="javascript:void(0);" onclick="searchFunc('荣耀V20'); return false;" style="color:#CF0A2C"   rel="nofollow">荣耀V20</a>
                        <a href="javascript:void(0);" onclick="searchFunc('nova4'); return false;" style="color:#CF0A2C"   rel="nofollow">nova4</a>
                    </div>
                </div>
                <div id="search-history" class="search-bar-history hide">
                    <p>
                        <label>历史记录</label><span id="cleanUp" class="search-history-btn">清除</span>
                    </p>
                    <ul id="search-history-list"></ul>
                </div>
            </div>
            <!-- 2017-02-15-搜索条-end -->
        </div>
    </div>
</div><!-- 2017-02-15-头部-end -->
<div id="searchHotWordList" style="display:none;">[{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:216,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-2,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,&quot;word&quot;:&quot;nova4&quot;},{&quot;id&quot;:226,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-3,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,&quot;word&quot;:&quot;HUAWEI Mate 20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:250,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-11,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;荣耀V20&quot;},{&quot;id&quot;:47,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-12,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;荣耀Magic2&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,&quot;id&quot;:254,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-25,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:1,&quot;word&quot;:&quot;荣耀V20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,&quot;id&quot;:258,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-26,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:1,&quot;word&quot;:&quot;nova4&quot;}]</div>
<script type="text/javascript">
    ec.load("ec.slider", {
        loadType : "lazy",
        callback : function() {
            $("#ec-erweima").slider({
                width:     91, //必须
                height:     96, //必须
                style : 1, //1显示分页，2只显示左右箭头,3两者都显示
                pause : 120000, //间隔时间
                auto : true
            });
        }
    });
    function searchFunc(word){
        window.open("/search?keyword="+encodeURIComponent(word));
    }
    ec.ready(function(){
        ec.search.searchArr = JSON.parse($("#searchHotWordList").text());
        $("#search-kw").val('');
        if (typeof (topSearchKeyword) != "undefined") {
            var keyword = topSearchKeyword;
            if (keyword != null && keyword != "") {
                $("#search-kw").val(ec.freemarkerDecode(keyword));
                $("#search-bar-key").css("display", "none");
            }
        }
        $('#search-history').bind({
            mouseover:function(){
                $("#search-history").show();
            },
            mousedown:function(e){
                $("#search-kw").blur();
                $("#search-bar-key").hide();
                $("#search-history").show();
                if($(e.target)[0].nodeName=='A'){
                    $("#search-kw").val(decodeURIComponent($(e.target).attr('data-value')));
                    //如果是IE浏览器，则需要重新执行跳转
                    if (ec.checkBrowerIE()) {
                        window.location.href=$(e.target).attr('href');
                    }
                } else if($(e.target)[0].nodeName == 'SPAN'){
                    ec.search.deleteSearchHistory();
                    $("#search-history").hide();
                }
            }

        });

        function fixSearchBarFormStyle() {
            if ($("#search-history").is(':visible') || $(".autocomplete").is(':visible')) {
                $("#search-bar-form").addClass("hover")
            } else {
                $("#search-bar-form").removeClass("hover")
            }
        }
        $("#search-kw").bind({
            focus: function () {
                if ($("#search-kw").val().trim() == '') {
                    $("#search-bar-key").hide();
                    //隐藏搜索历史
                    $("#search-history").hide();
                    //查询用户搜索历史
                    ec.search.querySearchHistory();
                }
                fixSearchBarFormStyle();
            },
            blur: function () {
                if ($("#search-kw").val().trim() == '') {
                    $("#search-bar-key").show();
                } else {
                    $("#search-bar-key").hide();
                }
                //隐藏搜索历史
                $("#search-history").hide();
                fixSearchBarFormStyle();
            },
            keydown: function () {
                //隐藏搜索历史
                if ($("#search-kw").val().trim() == '') {
                    $("#search-history").hide();
                }
                fixSearchBarFormStyle();
            },
            keyup: function () {
                if ($("#search-kw").val().trim() == '') {
                    ec.search.querySearchHistory();
                } else {
                    //隐藏搜索历史
                    $("#search-history").hide();
                }
                fixSearchBarFormStyle();
            }
        });

        ec.ui.hover("#searchBar-area" , {captureInput : true });

    });
    ec.code.addService({showService : true , showTools : true , live800Url4Web : "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af"});
    function pushIndexLogoClickMsg(adid,url)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":adid,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010201",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010201", "link", value]);
    }

    $(".naver .clearfix").find("li").find("a").click(function(){
        var url = $(this).attr("href");
        var name =  $(this).find("span").html();
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010301",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010301", "link", value]);
    });
</script><!-- 导航 -->
<div class="naver-main">
    <div class="layout">


        <!-- 20130909-导航-start -->
        <!-- 20130909-导航-end -->
        <!-- 20140823-分类-start -->
        <div class="category category-index" id="category-block">
            <!-- 20170223-分类-start -->
            <div class="b">
                <ol class="category-list">
                    <!-- 鼠标悬停增加ClassName： hover -->
                    <c:forEach items="${cs}" var="c">
                    <li id="zxnav_0"  class="category-item ">
                        <input id="zxnav_0_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_0_name" type="hidden" autocomplete="off" value="手机">
                        <div class="category-item-bg">
                            <div class="category-info">
                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="${pageContext.request.contextPath}/showCommdity?cid=${c.id}" target="_blank">
                                            <span>${c.name}</span>
                                        </a>
                                    </div>

                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <c:forEach items="${c.products}" var="p">
                                <li class="subcate-item">
                                    <input id="child_name" type="hidden" value="${p.name}">
                                    <input id="child_status" type="hidden" value="${p.id}">
                                    <input id="child_type" type="hidden" value="1">
                                    <a href="${pageContext.request.contextPath}/productDetail?pid=${p.id}" target="_blank">
                                        <img src="img/productSingle/${p.firstProductImage.id}.jpg">
                                        <span>${p.name}</span>

                                    </a>
                                </li>
                                </c:forEach>

                                <li class="subcate-btn">
                                    <a href="/list-36" target="_blank">查看全部</a>
                                </li>
                            </ul>


                        </div>
                    </li>


                    </c:forEach>
                </ol>
            </div>
            <!-- 20170223-分类-end -->

            <!-- 20140823-分类-end -->

        </div>
    </div>
</div>
<script>
    (function () {
        // 重置首页导航为纵向排列
        $('.category-panels').each(function () {
            var panel = $(this);
            var olis = panel.find('ul.subcate-list li');
            var cols = Math.ceil(olis.length / 4);
            panel.children().remove();
            panel.addClass('category-panels-'+cols);
            for (var i = 0; i < cols; i++) {
                var newUl = $('<ul class="subcate-list clearfix"></ul>');
                var j = i * 4;
                var max = j + 4;
                if (max > olis.length) {
                    max = olis.length;
                }
                for (j; j < max; j++) {
                    newUl.append($(olis[j]));
                }
                panel.append(newUl);
            }
        });

        //获取二级菜单元素
        var $panels = $(".category-panels");
        //判断鼠标是否进入二级菜单
        var mouseInPanels = false;
        //用于存储鼠标移动过程中,开始位置和结束位置的数组
        var mouseTrach = [];
        var activeRow,  //选中的一级菜单
            activeMenu, //对应的右侧二级菜单
            timer;      //延时器

        $panels.live("mouseenter",function() {
            mouseInPanels = true;
        }).live("mouseleave",function() {
            mouseInPanels = false;
        });

        var moveHandler = function(e) {
            mouseTrach.push({
                x: e.pageX,
                y: e.pageY
            });
            if (mouseTrach.length > 2) {
                mouseTrach.shift();
            }
        };
        $('.category-item').each(function(){
            $(this).find('.category-panels').addClass('none');
        })
        $('.category-list').live('mouseenter',function(){
            $(document).bind("mousemove", moveHandler);
        }).live('mouseleave',function(){
            if (activeRow) {
                activeRow.removeClass("active");
                activeRow.parent().removeClass("active");
                activeRow = null;
            }
            if (activeMenu) {
                activeMenu.addClass("none");
                activeMenu = null;
            }
            $(document).unbind("mousemove", moveHandler);
        });
        //鼠标进入每个li
        $('.category-item ').live('mouseenter',function(e){
            if (!activeRow) {
                activeRow = $(this).addClass("active");
                $(this).parent().addClass("active");
                activeMenu = $(this).find('.category-panels');
                activeMenu.removeClass("none");
            }
            if (timer) {
                clearTimeout(timer);
            }
            //当前鼠标位置坐标
            var curMouse = mouseTrach[mouseTrach.length - 1];
            //前面鼠标位置坐标
            var prevMouse = mouseTrach[mouseTrach.length - 2];
            var delay = needDelay($('.category-list'), curMouse, prevMouse);
            if (delay) {
                var $this = $(this);
                timer = setTimeout(function() {
                    if (mouseInPanels) {
                        return
                    }
                    if (activeRow&&activeRow.hasClass('active')) {
                        activeRow.removeClass("active");
                        activeRow.parent().removeClass("active");
                    }
                    if (activeMenu) {
                        activeMenu.addClass("none");
                    }
                    activeRow = $this;
                    activeRow.addClass("active");
                    activeRow.parent().addClass("active");
                    activeMenu = $this.find('.category-panels');
                    activeMenu.removeClass("none");
                    timer = null;
                },500);
            } else {
                var prevActiveRow = activeRow;
                var prevActiveMenu = activeMenu;
                activeRow =$(this);
                activeMenu = $(this).find('.category-panels');
                prevActiveRow.removeClass("active");
                prevActiveRow.parent().removeClass("active");
                prevActiveMenu.addClass("none");
                activeRow.addClass("active");
                activeRow.parent().addClass("active");
                activeMenu.removeClass("none");
            }
        });

        //所有分类显示隐藏控制
        var isIndex =  true ,
            categoryBlock = gid('category-block');

        if(isIndex) return;

        $("#category-block").hover(function(){
            $(this).addClass("category-hover");
        },function(){
            $(this).removeClass("category-hover");
        });

        /*categoryBlock.onmouseover = function () {
		categoryBlock.className = 'category category-hover';
	};
	categoryBlock.onmouseout = function () {
		categoryBlock.className = 'category';
	};*/

    }());

    /**
     *功能：给鼠标移动到category-list li上面的时候，记得给他多添加一个hover类样式
     *目的是兼容ie6,以及调整二级分类的弹出框的位置。
     *@author 李峰
     */
    /**
     $(function(){
	$(".category-item").hover(function(){
		$(this).addClass("hover");
		//1.二级分类的top值
		var childrenTop = $(this).offset().top;
		//2.一级分类的top值
		var parentTop = $(".category-list").offset().top;
		//3.二级分类到一级分类顶部的距离
		var top = childrenTop - parentTop;
		//4.二级分类的弹出层的高度
		var childrenHeight = $(this).find(".category-panels").innerHeight();
		//5.一级分类容器的总高度
		var totalHeight = $(".category-list").height();
		alert("childrenTop:"+childrenTop+";parentTop:"+parentTop+";top:"+top+";childrenHeight:"+childrenHeight+";totalHeight:"+totalHeight) ;

		//6.如果二级分类.category-panels的内容高度大于总容量totalHeight,那么.category-panels置顶，然后多余的自动往下延续
		//如果二级分类childrenHeight内容高度(childrenHeight + top )大于totalHeight,那么.category-panels往上移动childrenHeight + top -totalHeight
		if((top + childrenHeight) > totalHeight)
		{
			if(childrenHeight > totalHeight)
			{
				$(this).find(".category-panels").css("top",-top);
			}else{
				//上移动
				var topX = (childrenHeight+top) - totalHeight;
				$(this).find(".category-panels").css("top",-topX);

			}

		}

	},function(){
		$(this).removeClass("hover");
	});

});
     */

    //显示导航右侧商品数据
    /* function showProList(id){
 	//查询标志
    var flag=$("#"+id+"_flag").val();
 	var skuIds=$("#"+id+"_skuIds").val();

 	var mediaPath = "https://res.vmallres.com/pimages/";
 	//未查询过且有商品时才能执行
 	if(skuIds!="" && flag=="no"){
 		skuIds=skuIds.substring(0,skuIds.length-1);
 		var skuIdArr=skuIds.split(",");

		skuIdArr=removeDuplicatedItem(skuIdArr);

 		//标记标志位
 		$("#"+id+"_flag").val("yes");
 		new ec.ajax().get({
			url :  "/querySbomInfo.json?skuIdsStr="+skuIds,
			async:true,//使用异步的Ajax请求
			timeout : 10000,
			successFunction : function(json){
				if(json.success){
					var infoMap=json.sbomInfoMap;
					var html = '';
					for(var i=0;i<skuIdArr.length;i++){
					    var skuId=skuIdArr[i];
					    var sbomInfo=json.sbomInfoMap[skuId];
					    if(sbomInfo!=null){
						     //商品图片URL
							var imgPath = mediaPath + sbomInfo.photoPath+"142_142_"+sbomInfo.photoName;
							//商品URL
							var urlPath = "/product/"+sbomInfo.disPrdId+".html";
							//商品名称
							//var proName = sbomInfo.sbomName;
							var proName = $('#name_' + skuId).val();
							var price;
							//取得价格显示方式
							var priceMode = sbomInfo.priceMode;
							if (priceMode == 2 || sbomInfo.price == 0) {
								price = "暂无报价";
							} else {
								price = "&yen;" + sbomInfo.price;
							}
							//一级分类导航名称
							var oneNavName=$("#"+id+"_name").val();
							var onShowName="分类导航_"+oneNavName+"_"+sbomInfo.sbomCode;
							//var clickContent="_paq.push(['trackLink','"+onShowName+"', 'link', ' ']);ec.code.addAnalytics({hicloud:true});";
							html += '<li class="grid-items" onmouseenter="fixCurrent(this)"  onmouseleave="leaveCurrent(this)" >';
							html += '     <a class="thumb" target="_blank" href="'+urlPath+'" onclick = "pushNavIndexProImgMsg(\''+skuId+'\',\''+urlPath+'\')">';
							html += '         <p class="grid-img">';
							html += '         	<img alt="" src="' + imgPath + '">';
							html += '          </p>';
							html += '          <div class="grid-title">' + proName + '</div>';
							html += '          <p class="grid-price">' + price + '</p>';
							//html += '          <p class="grid-tips"><img src="" alt=""></p>';
							html += '       </a>';
							html += '  </li>';
					    }
					}
					$("#"+id+"_prolist").html(html);
				}

			}
		});
 	}
 };
 */
    function vector(a, b) {
        return {
            x: b.x - a.x,
            y: b.y - a.y
        }
    }

    function vectorPro(v1, v2) {
        return v1.x * v2.y - v1.y * v2.x;
    }

    /**
     *功能:判断两个值是否同正负
     *入参:两个number类型的值
     *出参:布尔值,同正负返回true,反之false
     */
    function sameSign(a, b) {
        return (a ^ b) >= 0;
    }

    /**
     *功能:判断p是否在三角形abc内
     *入参:p, a, b, c;p是需要判断的点，a,b,c是三角形的三个点，如果p在三角形内部，那么pa,pb,pc两个向量之间的差乘应该符号相同。（同正负）
     *出参:布尔值。如果p在a,b,c构成的三角形内,返回true,反之false
     */

    function isPoint(p, a, b, c) {
        var pa = vector(p, a);
        var pb = vector(p, b);
        var pc = vector(p, c);

        var t1 = vectorPro(pa, pb);
        var t2 = vectorPro(pb, pc);
        var t3 = vectorPro(pc, pa);

        return sameSign(t1, t2) && sameSign(t2, t3);
    }

    /**
     *功能:判断是正常切换一级菜单，还是需要延时
     *入参:鼠标滑入的DOM元素
     *出参:布尔值。需要延时返回true,正常切换一级菜单返回false
     */
    function needDelay(ele, curMouse, prevMouse) {
        if (!curMouse || !prevMouse) {
            return
        }
        var offset = ele.offset();
        var topleft = {
            x: offset.left+240,
            y: offset.top
        };
        var leftbottom = {
            x: offset.left+240,
            y: offset.top + ele.height()
        };
        return isPoint(curMouse, prevMouse, topleft, leftbottom);
    }


    //定位当前推荐商品
    function fixCurrent(obj){
        $(obj).addClass('current');
    }

    //离开当前推荐商品
    function leaveCurrent(obj){
        $(obj).removeClass('current');
    }
    //去重
    function removeDuplicatedItem(ar) {
        var ret = [];
        for (var i = 0, j = ar.length; i < j; i++) {
            if (ret.indexOf(ar[i]) === -1) {
                ret.push(ar[i]);
            }
        }
        return ret;
    }

    //商品分类纵向导航数据上报
    function pushNavIndexProMsg(name,url,type,location)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "URL":url,
                    "type":type,
                    "location":location,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010501",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010501", "link", value]);
    }
    //商品分类纵向导航数据上报(图片)
    function pushNavIndexProImgMsg(skuId,url)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "SKUID":skuId,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010601",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010601", "link", value]);
    }

    $('.category-list .category-item').each(function (location) {
        location += 1;
        var name = '', url = '', type = 0;
        $(this).find('.category-info a').bind('click', function() {
            name = $(this).find('span').text();
            url = $(this).attr('href');
            type = 0;
            pushNavIndexProMsg(name,url,type,location);
        });
        $(this).find('.category-panels a').bind('click', function() {
            name = $(this).find('span').text() || $(this).text();
            url = $(this).attr('href');
            type = 1;
            pushNavIndexProMsg(name,url,type,location);
        });
    });
</script><style>
    @charset "UTF-8";html{-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;color:#3a3a3a;background:#fff}html,body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th,td,hr,button,article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{margin:0;padding:0}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}audio,canvas,video{display:inline-block;*display:inline;*zoom:1}body,button,input,select,textarea{font:12px/1.5 "Helvetica Neue",Helvetica,Arial,"Microsoft Yahei","Hiragino Sans GB","Heiti SC","WenQuanYi Micro Hei",sans-serif}input,select,textarea{font-size:100%}table{border-collapse:collapse;border-spacing:0}th{text-align:inherit}fieldset,img,a img{border:0 none}iframe{display:block}abbr,acronym{border:0;font-variant:normal}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:400}ol,ul{list-style:none}caption,th{text-align:left}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:400}q:before,q:after{content:''}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}ins,a{text-decoration:none;color:#3a3a3a}a{cursor:pointer}a:hover{text-decoration:none}:focus{outline:0}.layout:before,.layout:after{content:"";display:table}.layout:after{clear:both}.layout{*zoom:1;width:1200px;margin:0 auto}.clearfix:before,.clearfix:after{content:" ";display:table}.clearfix:after{clear:both}.clearfix{*zoom:1}.fl,.left,.left-area{float:left}.fr,.right,.right-area{float:right}.hide,.hidden{display:none}.relative{position:relative}.home-recommend-goods{width:1200px}.home-recommend-goods .h{position:relative}.home-recommend-goods .h .title{color:#3a3a3a;font-size:22px;margin:0;padding:30px 0 15px 0;line-height:1}.button-top-banner-min,.button-top-banner-close{background:transparent url(images/icon1.png) scroll no-repeat}.user-head span{background:url(images/icon12.png) no-repeat}.hot-board-index .mask span{background:url(images/bg-slide.png) no-repeat}.minicart-pro-empty .icon-minicart,.hungBar a,.shortcut .dropdown-code .code-info span,.i-mall-huaban li .p-img span,.minicart-pro-item .p-choose i,.search-bar .search-bar-form .button,.search-bar .search-bar-key a .icon-fire,.hot-board-index .ec-slider-middle .button-slider-prev,.hot-board-index .ec-slider-middle .button-slider-next,.home-recommend-goods .special-title .title,.shortcut .s-dropdown .icon-minicart:before,.shortcut .dropdown-navs .dropdown-navs-icon:before,.i-mall-prompt .user-info .user-info-detail a:before,.minicart-pro-item .p-tags:before{background:url(images/icon-header.png) no-repeat}.top-banner a:hover{text-decoration:none}.top-banner-img{width:1200px;margin:0 auto;position:relative}.top-banner-img img{vertical-align:top}.button-top-banner-max,.button-top-banner-min,.button-top-banner-close{position:absolute;right:0;top:10px;width:24px;height:24px;color:#FFF;overflow:hidden}.button-top-banner-max{font-size:16px;font-weight:700;line-height:36px}.button-top-banner-min{text-indent:100%;white-space:nowrap;background-position:0 -409px}.button-top-banner-close{text-indent:100%;white-space:nowrap;background-position:0 -385px}.hungBar{position:fixed;right:6px;bottom:20px;height:166px;z-index:500}.hungBar .hungBar-content{width:38px;padding:1px 0}.hungBar a{width:38px;height:41px;display:block;position:relative;background-color:rgba(255,255,255,0.9)}.hungBar a span{position:absolute;background:#ca141d;color:#fff;height:18px;min-width:14px;padding:0 2px;border-radius:10px;text-align:center;line-height:18px;left:19px;font-size:12px;top:2px}.hungBar a i{position:absolute;display:none;width:76px;height:36px;line-height:36px;text-align:center;color:#777;background:#fff;border-radius:2px;box-shadow:0 2px 36px 0 rgba(0,0,0,0.07);left:-84px;top:0;font-style:normal}.hungBar a i:after{content:"";width:0;height:0;display:block;border-top:5px solid transparent;border-bottom:5px solid transparent;border-left:6px solid #fff;position:absolute;top:13px;right:-6px}.hungBar a:hover i{display:block}.hungBar a.hungBar-cart{background-position:-215px -122px}.hungBar a.hungBar-cart:hover{background-position:-253px -122px}.hungBar a.hungBar-service{background-position:-291px -122px}.hungBar a.hungBar-service:hover{background-position:-329px -122px}.hungBar a.hungBar-feedback{background-position:-367px -122px}.hungBar a.hungBar-feedback:hover{background-position:-405px -122px}.hungBar a.hungBar-top{background-position:-443px -122px}.hungBar a.hungBar-top:hover{background-position:-481px -122px}.user-head{width:90px;height:90px;position:relative}.user-head span{width:20px;height:20px;display:block;position:absolute;z-index:20;left:3px;bottom:1px}.user-head .icon-vip-level-0{background-position:0 0}.user-head .icon-vip-level-1{background-position:0 -23px}.user-head .icon-vip-level-2{background-position:0 -46px}.user-head .icon-vip-level-3{background-position:0 -69px}.user-head .icon-vip-level-4{background-position:0 -92px}.user-head .icon-vip-level-5{background-position:0 -115px}.user-head .user-img-shade{width:90px;height:90px;position:absolute;top:0;left:0;z-index:9}.user-head .user-img{width:90px;height:90px;position:absolute;top:0;left:0;z-index:10}.user-head .user-img img{width:70px;height:70px;border-radius:50%;position:absolute;top:10px;left:10px}.user-canvas{width:90px;height:90px;border-radius:50%;position:absolute;top:0;left:0}.user-canvas .canvas-bg{width:90px;height:90px;display:block}.user-canvas .canvas-left,.user-canvas .canvas-right{width:45px;height:90px;overflow:hidden;position:relative;float:left;z-index:4;background:#dfdfdf}.user-canvas .canvas-left{border-radius:45px 0 0 45px}.user-canvas .canvas-right{border-radius:0 45px 45px 0}.user-canvas .canvas-left div,.user-canvas .canvas-right div{content:"";position:absolute;display:block;width:45px;height:90px;border-radius:45px 0 0 45px;background:#f05c20;background:-webkit-gradient(linear,0 0,right 0,from(#f05c20),to(#f58555));background:-moz-linear-gradient(left,#f05c20,#f58555);transform:rotate(-180deg);transform-origin:right center;-ms-transform:rotate(-180deg);-ms-transform-origin:right center;-webkit-transform:rotate(-180deg);-webkit-transform-origin:right center;-moz-transform:rotate(-180deg);-moz-transform-origin:right center;-o-transform:rotate(-180deg);-o-transform-origin:right center}.user-canvas .canvas-right div{border-radius:0 45px 45px 0;background:-webkit-gradient(linear,0 0,right 0,from(#f58555),to(#f05c20));background:-moz-linear-gradient(left,#f58555,#f05c20);transform:rotate(-180deg);transform-origin:left center;-ms-transform:rotate(-180deg);-ms-transform-origin:left center;-webkit-transform:rotate(-180deg);-webkit-transform-origin:left center;-moz-transform:rotate(-180deg);-moz-transform-origin:left center;-o-transform:rotate(-180deg);-o-transform-origin:left center}.shortcut{min-width:1200px;height:40px;line-height:40px;background-color:#f9f9f9;font-family:"Helvetica Neue",Helvetica,Arial,"Microsoft Yahei","Hiragino Sans GB","Heiti SC","WenQuanYi Micro Hei",sans-serif;position:relative;z-index:411}.shortcut a{color:#a4a4a4}.shortcut a:hover{color:#ca151d}.shortcut li{float:left;padding:0 8px;position:relative}.shortcut li:before{content:"";width:1px;height:10px;display:block;position:absolute;top:15px;left:0;background:#d3d3d3}.shortcut li:first-child{padding-left:0}.shortcut li:first-child:before{display:none}.shortcut .s-sub{float:left}.shortcut .s-main{float:right;margin-right:-18px}.shortcut .s-main li:first-child+li:before{display:none}.shortcut .s-main-no-minicart{margin-right:-9px}.shortcut .s-dropdown{position:relative;z-index:310;margin:0 -9px;height:40px}.shortcut .s-dropdown .icon-minicart{position:relative;padding-left:18px}.shortcut .s-dropdown .icon-minicart:before{content:"";width:14px;height:14px;display:block;position:absolute;top:-1px;left:0}.shortcut .s-dropdown .icon-dropdown{position:relative;padding-right:10px}.shortcut .s-dropdown .icon-dropdown:before{content:"";width:0;height:0;display:block;border-left:4px solid transparent;border-right:4px solid transparent;border-top:4px solid #777;position:absolute;top:5px;right:-5px}.shortcut .s-dropdown .h{position:relative;padding:0 12px 0 10px;height:40px}.shortcut .s-dropdown:hover{margin:0 -9px;box-shadow:0 2px 36px 0 rgba(0,0,0,0.07);z-index:311}.shortcut .s-dropdown:hover .icon-dropdown:before{border-bottom:4px solid #cb242b;border-top:0}.shortcut .s-dropdown:hover .h{background:#fff;z-index:100}.shortcut .s-dropdown:hover .h a{position:relative;color:#cb242b}.shortcut .s-dropdown:hover .b{display:block}.shortcut .s-dropdown .b{display:none;position:absolute;top:40px;right:0;background:#fff;box-shadow:0 2px 36px 0 rgba(0,0,0,0.07);border-radius:8px 0 8px 8px}.shortcut .s-dropdown-link .b{border-radius:0 0 8px 8px}.shortcut .s-dropdown-minicart{background:#f2f2f2}.shortcut .dropdown-more{width:80px;padding:6px 0 12px 0;text-align:center;line-height:32px}.shortcut .dropdown-more.w-119{width:119px}.shortcut .dropdown-more a{color:#777}.shortcut .dropdown-more a:hover{color:#ca151d}.shortcut .dropdown-code{padding:20px 0 20px 0;width:244px}.shortcut .dropdown-code .dropdown-code-detail{padding-left:24px;padding-bottom:20px;border-bottom:1px solid #e5e5e5;margin-bottom:20px}.shortcut .dropdown-code .dropdown-code-detail a{cursor:default}.shortcut .dropdown-code .dropdown-code-detail:first-child a{cursor:pointer}.shortcut .dropdown-code .dropdown-code-detail:last-child{padding-bottom:0;border-bottom:0;margin-bottom:0}.shortcut .dropdown-code .code-img{width:90px;height:90px;float:left;margin-right:12px}.shortcut .dropdown-code .code-info{float:left;line-height:18px}.shortcut .dropdown-code .code-info h2{font-size:14px;font-weight:bold;margin-bottom:2px}.shortcut .dropdown-code .code-info p{color:#777}.shortcut .dropdown-code .code-info span{width:32px;height:32px;display:block;margin-top:5px}.shortcut .dropdown-code .code-info span.icon-andrid{background-position:-484px 0}.shortcut .dropdown-code .code-info span.icon-wechat{background-position:-518px 0}.shortcut .dropdown-code .code-info .red{color:#cb242b!important;line-height:16px}.shortcut .dropdown-minicart{color:#3a3a3a}.shortcut .dropdown-i-mall{width:340px;color:#3a3a3a}.shortcut .dropdown-navs{width:893px;line-height:20px;color:#777}.shortcut .dropdown-navs .dropdown-navs-icon{float:left;width:50px;text-align:center;margin:37px 46px 0 49px;color:#777}.shortcut .dropdown-navs .dropdown-navs-icon:before{content:"";width:50px;height:50px;display:block;margin-bottom:3px;background-position:-41px 0}.shortcut .dropdown-navs dl{float:left;width:185px;margin-top:22px;margin-bottom:20px}.shortcut .dropdown-navs dl dt{font-size:16px;color:#333;font-weight:bold;margin-bottom:8px}.shortcut .dropdown-navs dl dd{*zoom:1}.shortcut .dropdown-navs dl dd:before,.shortcut .dropdown-navs dl dd:after{content:"";display:table}.shortcut .dropdown-navs dl dd:after{clear:both}.shortcut .dropdown-navs dl .item{float:left;width:80px;margin-bottom:4px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.shortcut .dropdown-navs dl a{color:#777}.shortcut .dropdown-navs dl a:hover{color:#cb242b}.i-mall-prompt{padding:14px 20px 0 16px;color:#3a3a3a}.i-mall-prompt .user-info{padding-left:20px;width:188px;overflow:hidden}.i-mall-prompt .user-info .user-info-name{font-size:16px}.i-mall-prompt .user-info .user-info-detail{margin-top:13px;width:196px}.i-mall-prompt .user-info .user-info-detail a{width:88px;height:28px;line-height:28px;text-align:center;font-size:12px;border:1px solid #eaeaea;float:left;margin-right:8px;position:relative;text-indent:25px;color:#717171}.i-mall-prompt .user-info .user-info-detail a:before{content:"";width:20px;height:16px;display:block;position:absolute;top:6px;left:6px}.i-mall-prompt .user-info .user-info-detail .icon-realname:before{background-position:-23px -77px}.i-mall-prompt .user-info .user-info-detail .icon-realname.disabled:before{background-position:0 -77px}.i-mall-prompt .user-info .user-info-detail .icon-mail:before{background-position:0 -96px}.i-mall-uc{width:340px;padding:32px 0 0;overflow:hidden;line-height:1}.i-mall-uc dl{overflow:hidden}.i-mall-uc dt,.i-mall-uc dd{float:left}.i-mall-uc dt{width:300px;font-size:14px;border-bottom:1px solid #eaeaea;padding:0 20px 13px}.i-mall-uc .i-mall-uc-con{width:300px;margin:0 auto;border-bottom:1px solid #eaeaea}.i-mall-uc .i-mall-uc-con dl{width:319px;padding:16px 0 12px}.i-mall-uc .i-mall-uc-con a{color:#3a3a3a}.i-mall-uc .i-mall-uc-con dd{border-left:1px solid #e4e4e4;padding:0 13px}.i-mall-uc .i-mall-uc-con dd:first-child{border-left:none;padding-left:0}.i-mall-uc dt a{font-size:12px;color:#a4a4a4}.i-mall-uc dt a:hover,.i-mall-uc dd a:hover{text-decoration:none;color:#ca151d}.i-mall-uc li{float:left;width:98px;line-height:14px;border-right:1px solid #eee;margin-bottom:26px;overflow:hidden;text-align:center}.i-mall-huaban{text-align:center;padding:9px 0 8px}.i-mall-huaban ul{margin-left:2px}.i-mall-huaban li{float:left;height:108px;border-left:1px solid #eaeaea;width:99px;padding:0 6px}.i-mall-huaban li:before{display:none}.i-mall-huaban li:first-child{border-left:none;padding:0 6px}.i-mall-huaban li .p-img{margin:0 auto;height:58px;width:58px}.i-mall-huaban li .p-img span{width:50px;height:50px;display:block}.i-mall-huaban li .p-img span.img01{background-position:-375px -75px}.i-mall-huaban li .p-img span.img02{background-position:-435px -75px}.i-mall-huaban li .p-img span.img03{background-position:-494px -75px}.i-mall-huaban li .p-price,.i-mall-huaban li .p-dec{line-height:1;font-size:12px}.i-mall-huaban li .p-dec{color:#a4a4a4}.i-mall-huaban li .p-price{color:#717171;padding:3px 0 10px;color:#3a3a3a;font-size:16px}.i-out{height:39px;line-height:39px;background:#f4f4f4;text-align:center;border-radius:0 0 8px 8px}.i-out a{color:#717171}.i-out a:hover{color:#ca151d}.shortcut .s-dropdown .minicart-pro-empty .icon-minicart:before{display:none}.shortcut .minicart-pro-empty .icon-minicart{padding-left:0}.minicart-pro-empty{width:460px;text-align:center;color:#3a3a3a;padding:20px 0;line-height:1;font-size:14px;color:#a4a4a4}.minicart-pro-empty a{width:148px;height:38px;line-height:38px;display:block;margin:0 auto;color:#ca141d;border-radius:2px;border:1px solid #a4a4a4;color:#3a3a3a;margin-top:20px}.minicart-pro-empty a:hover{border-color:#ca141d;color:#ca141d}.minicart-pro-empty .icon-minicart{width:100px;height:100px;display:block;margin:0 auto;margin-bottom:16px;background-position:0 -166px}.minicart-pro-empty-index{padding:50px 0 50px}.minicart-pro-empty-index a{display:none}.minicart-pro-list{width:460px;margin-bottom:60px;min-height:168px}.minicart-pro-list li{padding:20px 20px 0 20px;float:none}.minicart-pro-list li:first-child{padding:20px 20px 0 20px}.minicart-pro-list li:before{display:none}.minicart-pro-list-scroll{width:477px;max-height:458px;overflow-x:hidden;overflow-y:auto}.minicart-pro-item{vertical-align:top;position:relative;border-bottom:1px solid #eaeaea}.minicart-pro-item .pro-info{padding-bottom:20px}.minicart-pro-item .pro-tags{position:absolute;top:-25px;left:-1px;width:50px;height:22px;border-radius:0 0 16px 0;color:#666;font-size:14px;text-align:center;background:#f6f6f6;border:1px solid #eaeaea}.minicart-pro-item .pro-tips{top:66px;left:42px;font-size:12px;color:#ca151d;width:60px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.minicart-pro-item .pro-tips:hover{width:auto}.minicart-pro-item .p-choose{float:left;width:14px;height:14px;margin:23px 22px 0 12px}.minicart-pro-item .p-choose i{display:block;width:14px;height:14px;cursor:pointer}.minicart-pro-item .p-choose i.icon-choose{background-position:0 -129px}.minicart-pro-item .p-choose i.icon-choose-normal{background-position:-18px -129px}.minicart-pro-item .p-img{float:left;width:64px;height:64px}.minicart-pro-item .p-img img{vertical-align:top;width:64px;height:64px}.minicart-pro-item .p-name{float:left;width:298px;padding:0 0 0 9px}.minicart-pro-item .p-name a{display:block;font-size:14px;line-height:22px;color:#3a3a3a;width:100%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.minicart-pro-item .p-name a:hover{text-decoration:none;color:#ca151d}.minicart-pro-item .p-dec{float:left;width:298px;padding:0 0 0 9px;height:20px;line-height:20px;color:#a4a4a4;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.minicart-pro-item .p-status{float:left;width:298px;padding-left:9px}.minicart-pro-item .p-price{float:right;line-height:19px;font-size:14px;text-align:right}.minicart-pro-item .p-price s{color:#a4a4a4;display:inline-block}.minicart-pro-item .p-price b{font-weight:400;color:#333;margin-left:7px;margin-right:7px;display:inline-block;min-width:64px}.minicart-pro-item .p-price em{color:#3a3a3a;margin:0 2px 0 0}.minicart-pro-item .p-price span{color:#3a3a3a}.minicart-pro-item .p-price strong{font-weight:normal;min-width:32px;display:inline-block}.minicart-pro-item .p-tags{float:left;line-height:19px;color:#ca141d;position:relative;padding-left:17px}.minicart-pro-item .p-tags:before{content:"";width:12px;height:12px;display:block;position:absolute;top:4px;left:0;background-position:-28px -99px}.minicart-pro-item .p-pack{margin-top:6px;margin-bottom:10px;padding-top:4px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;position:relative;padding-left:50px;line-height:16px}.minicart-pro-item .p-pack .p-mini-tag-suit{display:block;border-radius:2px;background:#c29a70;color:#fff;width:40px;height:16px;line-height:16px;text-align:center;position:absolute;left:0;top:4px}.minicart-pro-item .p-pack a{color:#3a3a3a;cursor:default}.minicart-pro-item .p-pack a:hover{color:#3a3a3a!important}.minicart-pro-item .p-pack span.disabled{color:#a4a4a4}.minicart-pro-item .p-pack.disabled,.minicart-pro-item .p-pack.disabled a{color:#a4a4a4}.minicart-pro-item .p-pack.disabled:hover,.minicart-pro-item .p-pack.disabled a:hover{color:#a4a4a4!important}.minicart-pro-item .pro-other{margin-top:5px;margin-bottom:10px}.minicart-pro-item .pro-other li{overflow:hidden;*zoom:1;padding:0;margin-top:5px}.minicart-pro-item .pro-other li:before,.minicart-pro-item .pro-other li:after{content:"";display:table}.minicart-pro-item .pro-other li:after{clear:both}.minicart-pro-item .pro-other li.disabled .p-title{color:#a4a4a4}.minicart-pro-item .pro-other li.disabled .p-title span{color:#e58a8f;border-color:#e58a8f}.minicart-pro-item .pro-other li.disabled .p-price b,.minicart-pro-item .pro-other li.disabled .p-price em,.minicart-pro-item .pro-other li.disabled .p-price span{color:#a4a4a4}.minicart-pro-item .pro-other .p-title{color:#3a3a3a;position:relative;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;width:210px;padding-left:50px;line-height:16px;float:left}.minicart-pro-item .pro-other .p-title span{height:14px;width:38px;display:block;border-radius:2px;line-height:14px;background:#fff;border:1px solid #ca141d;color:#ca141d;text-align:center;position:absolute;left:0;top:0}.minicart-pro-item .pro-other .p-title-wide{width:368px}.minicart-pro-item .pro-other .p-title-wide a{color:#3a3a3a;cursor:default}.minicart-pro-item .pro-other .p-price{float:right;line-height:16px;font-size:12px}.minicart-pro-item .pro-other .p-add{width:180px}.minicart-pro-item.disabled .p-name a{color:#a4a4a4}.minicart-pro-item.disabled .p-name a:hover{color:#a4a4a4!important}.minicart-pro-item.disabled .p-price b,.minicart-pro-item.disabled .p-price em,.minicart-pro-item.disabled .p-price span{color:#a4a4a4}.minicart-pro-item.disabled .pro-other .p-title{color:#a4a4a4}.minicart-pro-item.disabled .pro-other .p-title span{color:#e58a8f;border-color:#e58a8f}.minicart-pro-item.disabled .p-pack{color:#a4a4a4}.minicart-pro-item.disabled .p-pack a{color:#a4a4a4}.minicart-pro-item.disabled .p-pack a:hover{color:#a4a4a4!important}.minicart-pro-item.disabled i.icon-choose,.minicart-pro-item.disabled i.icon-choose-normal{background-position:-18px -115px;cursor:not-allowed}.minicart-pro-settleup{background:#f0f0f0;position:absolute;bottom:0;height:60px;width:100%;border-radius:0 0 8px 8px}.minicart-pro-settleup p{color:#3a3a3a;font-size:14px;float:left;margin-left:23px;margin-top:10px}.minicart-pro-settleup span{display:block;line-height:1.2}.minicart-pro-settleup b{color:#ca141d;font-size:24px;font-weight:normal;margin-right:12px}.minicart-pro-settleup s{color:#3a3a3a;font-size:14px;position:relative;top:-4px}.minicart-pro-settleup .button-minicart{float:right;color:#FFF;background-color:#ca151e;font-size:14px;width:150px;height:40px;text-align:center;line-height:40px;border-radius:2px;margin:10px 20px 0 0}.minicart-pro-settleup .button-minicart:hover{background:#d5444b;color:#fff}.minicart-pro-settleup .button-minicart.disabled{background:#e5aeb0;cursor:not-allowed}.header{min-width:1200px;height:41px;padding:18px 0 15px 0;background:#fff;position:relative;font-family:"Helvetica Neue",Helvetica,Arial,"Microsoft Yahei","Hiragino Sans GB","Heiti SC","WenQuanYi Micro Hei",sans-serif;line-height:1.5;box-shadow:0 0 46px rgba(0,0,0,0.03)}.order-header{-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.logo{float:left;margin-right:34px}.logo img{height:36px}.logo a{float:left}.naver{float:left;max-width:560px;height:40px;overflow:hidden}.naver li{float:left;margin-right:24px}.naver li.img{margin-top:7px}.naver li.img a.current:before,.naver li.img a:hover:before{display:none}.naver li.img img{display:block;height:24px}.naver a{font-size:16px;color:#333;position:relative;line-height:40px;display:block}.naver a.current,.naver a:hover{color:#ca141d}.naver a.current:before,.naver a:hover:before{content:"";height:2px;width:100%;display:block;background:#ca141d;position:absolute;bottom:2px}.header .right .naver li{margin-left:30px;margin-right:0}.search-bar{margin-top:5px;background:#fff;border-radius:16px 16px 0 0}.search-bar .search-bar-form{line-height:1;width:320px;height:30px;background:#fff;border:1px solid #fff;border-radius:15px;position:relative;z-index:310}.search-bar .search-bar-form .text{border:0;color:#3a3a3a;width:290px;text-indent:15px;height:30px;line-height:30px;padding-right:30px;background:#f5f5f5;border-radius:15px;float:left}.search-bar .search-bar-form .text::-ms-clear{display:none}.search-bar .search-bar-form .button{width:30px;height:30px;border-radius:15px;cursor:pointer;border:0;text-indent:-9999px;overflow:hidden;position:absolute;right:1px;top:0;background-position:0 -21px;background-color:#666}.search-bar .search-bar-form.hover{border:1px solid #e5e5e5;border-bottom:0;border-radius:15px 15px 0 0}.search-bar .search-bar-key{position:absolute;max-width:260px;right:31px;bottom:6px;z-index:311;white-space:nowrap;overflow:hidden}.search-bar .search-bar-key a{color:#999;font-size:12px;margin-right:14px}.search-bar .search-bar-key a .icon-fire{width:17px;height:19px;display:inline-block;background-position:0 -56px;position:relative;top:4px;margin-left:2px}.search-bar .search-bar-key a:hover{color:#333}.search-bar-history{background:#fff;width:320px;border:1px solid #e5e5e5;border-radius:0 0 15px 15px;border-top:0;position:absolute;top:31px;line-height:26px;z-index:10;box-shadow:0 2px 36px 0 rgba(0,0,0,0.07);z-index:306}.search-bar-history p{text-indent:15px;height:30px;line-height:30px}.search-bar-history label{font-size:13px;color:#888}.search-bar-history .search-history-btn{float:right;margin-right:17px;cursor:pointer;font-size:13px;color:#888}.search-bar-history ul{text-indent:15px}.search-bar-history ul li{padding-right:17px}.search-bar-history ul li a{display:block;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;font-size:13px;color:#333;height:30px;line-height:30px}.search-bar-history ul li:hover{background:#ebebeb}.search-bar-history ul li:last-child{border-radius:0 0 15px 15px}.autocomplete-w1{position:absolute;top:31px;left:0;z-index:306}.autocomplete-w1 .autocomplete{background:#fff;box-shadow:0 2px 36px 0 rgba(0,0,0,0.07);width:320px!important;border:1px solid #e5e5e5;border-radius:0 0 15px 15px;border-top:0}.autocomplete-w1 .autocomplete div{width:288px;height:30px;line-height:30px;white-space:nowrap;overflow:hidden;color:#333;padding:0 17px 0 15px;text-overflow:ellipsis}.autocomplete-w1 .autocomplete div:last-child{border-radius:0 0 15px 15px}.autocomplete-w1 .autocomplete div:hover{background:#ebebeb}.autocomplete-w1 .autocomplete .selected{background:#fafafa;cursor:pointer}.autocomplete-w1 .autocomplete strong{font-weight:400;color:#ff6a6e}.autocomplete-w1 .autocomplete em{color:#ff6a6e}.button-slider-prev,.button-slider-next{position:absolute;z-index:3;width:17px;height:28px;top:50%;margin-top:-14px;border-radius:2px}.button-slider-prev{left:8px;background-position:-17px -24px}.button-slider-next{right:8px;background-position:4px -24px}.button-slider-prev-high,.button-slider-next-high,.button-slider-prev:hover,.button-slider-next:hover{background-color:rgba(191,191,191,0.8);*background-color:#CCC}.button-slider-prev-high,.button-slider-prev:hover{background-position:-37px -24px}.button-slider-next-high,.button-slider-next:hover{background-position:-56px -24px}.hot-board{min-width:1200px}.hot-board .ec-slider{height:450px}.ec-slider{position:relative;overflow:hidden}.ec-slider-list{overflow:hidden;position:absolute}.ec-slider-list img{vertical-align:top}.ec-slider-item{float:left;width:100%}.ec-slider-item-img{width:1200px;margin:0 auto;text-align:right}.ec-slider-nav{height:13px;text-align:right;position:absolute;bottom:10px;left:50%;width:250px;margin-left:228px}.ec-slider-nav span{cursor:default;border-radius:2px;display:inline-block;*display:inline;*zoom:1;height:13px;line-height:13px;text-align:center;color:#fff;margin-left:10px;width:13px;background-color:#c5c5c5;opacity:.2;filter:alpha(opacity=20)}.ec-slider-nav .current{background-color:#ce2a32}.ec-slider-nav-1{height:10px;text-align:center;position:absolute;bottom:30px;left:50%;width:300px;margin-left:-150px}.ec-slider-nav-1 span{border-radius:10px;border:1px solid #FFF;display:inline-block;*display:inline;*zoom:1;height:10px;line-height:10px;text-align:center;color:#fff;margin-left:10px;width:10px;background-color:transparent;cursor:default}.ec-slider-nav-1 .current{background-color:#FFF}.hot-board-index{position:relative}.hot-board-index .mask{text-align:center;width:100%;min-width:1200px;height:72px;display:block;position:absolute;bottom:0;z-index:1}.hot-board-index .mask span{width:100%;min-width:1200px;height:72px;display:block;background-size:100% 72px}.hot-board-index .ec-slider{height:550px!important}.hot-board-index .ec-slider>ul{position:absolute;height:550px!important}.hot-board-index .ec-slider>ul li{height:550px!important}.hot-board-index .ec-slider-middle{width:1200px;margin:0 auto;position:relative;height:0}.hot-board-index .ec-slider-middle .ec-slider-nav-1{bottom:auto;left:auto;right:0;top:448px;text-align:right}.hot-board-index .ec-slider-middle .ec-slider-nav-1 span{margin-left:7px}.hot-board-index .ec-slider-middle .button-slider-prev,.hot-board-index .ec-slider-middle .button-slider-next{margin-top:0;width:80px;height:80px;position:relative;display:block!important}.hot-board-index .ec-slider-middle .button-slider-prev:before,.hot-board-index .ec-slider-middle .button-slider-next:before{display:none}.hot-board-index .ec-slider-middle .button-slider-prev{left:204px;top:199px;background-position:-340px 0}.hot-board-index .ec-slider-middle .button-slider-prev:hover{background-position:-260px 0}.hot-board-index .ec-slider-middle .button-slider-next{left:1132px;top:119px;background-position:-100px 0}.hot-board-index .ec-slider-middle .button-slider-next:hover{background-position:-180px 0}.naver-main{min-width:1200px;background-color:#FFF}.naver-main .layout{position:relative;z-index:410}.category{position:absolute;left:0;top:18px;width:200px}.category .category-list{position:relative;height:440px;box-shadow:0 0 46px rgba(0,0,0,0.03)}.category .category-list.active .category-item:first-child{border-radius:10px 0 0 0}.category .category-list.active .category-item:last-child{border-radius:0 0 0 10px}.category .category-item{background:rgba(255,255,255,0.9)}.category .category-item:first-child{border-radius:10px 10px 0 0}.category .category-item:first-child .category-info{height:48px}.category .category-item:last-child{border-radius:0 0 10px 10px}.category .category-item:last-child .category-info{height:49px;border-bottom:0}.category .category-item.active:first-child .category-item-bg{border-radius:10px 0 0 0}.category .category-item.active:first-child .category-item-bg:before{display:none}.category .category-item.active:first-child .category-item-bg:after{height:74px}.category .category-item.active:last-child .category-item-bg{border-radius:0 0 0 10px}.category .category-item.active:last-child .category-item-bg:after{height:74px}.category .category-item.active .category-item-bg{background:#fff;box-shadow:0 0 46px rgba(0,0,0,0.1);position:relative}.category .category-item.active .category-item-bg:before{content:"";width:200px;height:1px;background:#fff;position:absolute;top:-1px;left:0;z-index:2;display:block}.category .category-item.active .category-item-bg:after{content:"";width:60px;height:73px;background:#fff;position:absolute;top:0;right:-10px;z-index:2;display:block}.category .category-item.active .category-info{border-bottom-color:#fff}.category .category-item.active .category-info a{color:#333;position:relative;z-index:3}.category .category-item.active .category-info a:hover{color:#d3454b}.category .category-item.active .category-title{position:relative;z-index:3}.category .category-info{padding:12px 0 13px 0;margin:0;margin-left:25px;width:150px;border-bottom:1px solid rgba(0,0,0,0.06);height:47px;position:relative}.category .category-info a{color:#a6a6a6;margin-right:9px;font-size:14px}.category .category-info .category-title{margin-bottom:2px}.category .category-info .category-title a{font-size:16px;color:#848484}.category .category-info .category-info-detail{width:175px}.category .category-panels{position:absolute;left:200px;height:416px;max-width:1020px;background:#FFF;padding:24px 22px 0 28px;border-radius:0 10px 10px 0;box-shadow:0 0 46px rgba(0,0,0,0.1);top:0;z-index:1;overflow:hidden}.category .category-panels.none{display:none}.category .category-panels.category-panels-1{width:204px}.category .category-panels.category-panels-2{width:408px}.category .category-panels.category-panels-3{width:612px}.category .category-panels.category-panels-4{width:816px}.category .category-panels.category-panels-5{width:1020px}.category .category-panels.category-panels-6{width:1020px}.category .category-panels.category-panels-7{width:1020px}.category .category-panels.category-panels-8{width:1020px}.category .subcate-list{width:204px;margin:0;float:left}.category .subcate-list .subcate-item{float:left;margin-bottom:24px}.category .subcate-list .subcate-item a{display:block;width:204px;height:80px;font-size:14px;border-radius:10px;margin-right:0}.category .subcate-list .subcate-item a:hover{background:#f6f6f6}.category .subcate-list .subcate-item a img{width:56px;height:56px;float:left;margin:12px 6px 0 6px}.category .subcate-list .subcate-item a span{float:left;color:#777;font-size:13px;margin-top:30px;width:120px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.category .subcate-list .subcate-btn{float:left}.category .subcate-list .subcate-btn a{width:112px;height:42px;line-height:42px;margin-top:18px;margin-left:36px;border:1px solid #f2f2f2;border-radius:0 22px 22px 0;font-size:13px;color:#a7a7a7;display:block;position:relative;text-indent:34px}.category .subcate-list .subcate-btn a:before{content:"";width:42px;height:42px;background:#fff;border:1px solid #f2f2f2;display:block;border-radius:22px;position:absolute;top:-1px;left:-22px}.category .subcate-list .subcate-btn a:after{content:"";width:0;height:0;display:block;border-bottom:5px solid transparent;border-top:5px solid transparent;border-left:5px solid #c0c0c0;position:absolute;top:16px;left:-1px}.i-mall-prompt .w-name{width:72px;height:72px}.i-mall-prompt .w-name img{width:72px;height:72px;border-radius:50%}.i-mall-prompt .w-info{text-align:left;color:#999}.home-channel-main{position:relative;top:-72px;height:34px}.home-channel-list{background:#FFF;text-align:center;border-top:0 none;width:1200px;height:88px;border-radius:10px;box-shadow:0 2px 26px rgba(0,0,0,0.07);position:absolute;z-index:2}.home-channel-list li{float:left;position:relative}.home-channel-list li.s1{width:270px;height:55px;margin-top:17px;border-right:1px solid #ededed}.home-channel-list li.s1 .i-mall-prompt{padding:0;padding-left:26px;text-align:left}.home-channel-list li.s1 .i-mall-prompt .w-reg{margin-top:1px;font-size:14px;color:#999}.home-channel-list li.s1 .i-mall-prompt .w-reg a{color:#333}.home-channel-list li.s1 .i-mall-prompt .w-reg a:hover{color:#cb242b}.home-channel-list li.s1 .i-mall-prompt .w-reg a:first-child{margin-left:12px}.home-channel-list li.s1 .i-mall-prompt .w-reg span{color:#333}.home-channel-list li.s1 .i-mall-prompt .w-btn{margin-top:6px}.home-channel-list li.s1 .i-mall-prompt .w-btn a{display:inline-block;width:68px;height:22px;text-align:center;line-height:22px;background:#595454;color:#fde4b3;border-radius:5px;font-size:13px}.home-channel-list li.s1 .i-mall-prompt .w-btn a:hover{background:#333}.home-channel-list li.s1 .i-mall-prompt .w-btn a.new{width:66px;height:20px;line-height:20px;background:#fff;border:1px solid #e47b7f;color:#de5b60;margin-right:8px}.home-channel-list li.s1 .i-mall-prompt .w-btn a.new:hover{color:#fff;background:#de5b60;border-color:#de5b60}.home-channel-list li.s1 .i-mall-prompt .w-name{width:52px;height:52px;margin-right:17px}.home-channel-list li.s1 .i-mall-prompt .w-name img{width:52px;height:52px}.home-channel-list li.s1 .i-mall-prompt .w-info{margin-top:1px;font-size:14px}.home-channel-list li.s1 .i-mall-prompt .w-info a{color:#999;margin-left:5px}.home-channel-list li.s1 .i-mall-prompt .w-info a:hover{color:#cb242b;text-decoration:none}.home-channel-list li.s2{width:660px;margin-top:17px}.home-channel-list li.s2 ul{display:table;width:100%}.home-channel-list li.s2 li{text-align:center;display:table-cell;float:none;width:104px}.home-channel-list li.s2 li a{text-align:center;display:block;width:100%;min-width:48px;max-width:84px;margin:0 auto}.home-channel-list li.s2 li:hover .p-dec{color:#cb242b}.home-channel-list li.s2 li .p-img{width:40px;height:40px;margin:0 auto;overflow:hidden;position:relative}.home-channel-list li.s2 li .p-img img{position:absolute;width:auto;height:auto}.home-channel-list li.s2 li .p-img .img0{left:0}.home-channel-list li.s2 li .p-img .img1{left:-40px}.home-channel-list li.s2 li .p-img .img2{left:-80px}.home-channel-list li.s2 li .p-img .img3{left:-120px}.home-channel-list li.s2 li .p-img .img4{left:-160px}.home-channel-list li.s2 li .p-img .img5{left:-200px}.home-channel-list li.s2 li .p-dec{line-height:24px;width:100%;text-align:center;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;color:#777}.home-channel-img8 .s2 .img6{left:-240px}.home-channel-img8 .s2 .img7{left:-280px}.home-channel-img8 .s3 .img0{left:-320px}.home-channel-img8 .s3 .img1{left:-340px}.home-channel-img8 .s3 .img2{left:-360px}.home-channel-img7 .s2 .img6{left:-240px}.home-channel-img7 .s3 .img0{left:-280px}.home-channel-img7 .s3 .img1{left:-300px}.home-channel-img7 .s3 .img2{left:-320px}.home-channel-img6 .s2 .img6{left:-240px}.home-channel-img6 .s3 .img0{left:-240px}.home-channel-img6 .s3 .img1{left:-260px}.home-channel-img6 .s3 .img2{left:-280px}.home-channel-list li.s3{width:266px;height:88px;border-left:1px solid #ededed}.home-channel-list li.s3 .p-notice{height:43px;border-bottom:1px solid #e5e5e5}.home-channel-list li.s3 .icon-notice{display:block;font-size:14px;font-weight:bold;margin:10px 8px 0 17px}.home-channel-list li.s3 .icon-notice a{color:#777}.home-channel-list li.s3 .p-notice-content{height:43px;overflow:hidden;text-align:left;width:190px;position:relative}.home-channel-list li.s3 .p-notice-content li{width:190px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;height:43px;line-height:43px;font-size:12px}.home-channel-list li.s3 .p-notice-content li a{color:#6f6f6f}.home-channel-list li.s3 .p-notice-content li a:hover{text-decoration:none;color:#cb242b}.home-channel-list li.s3 .p-info li{height:42px;line-height:42px;width:89px}.home-channel-list li.s3 .p-info li:last-child{border:0;width:88px}.home-channel-list li.s3 .p-info li a{display:block;color:#666}.home-channel-list li.s3 .p-info li a span{margin-right:2px;display:inline-block;position:relative;width:20px;height:20px;top:5px;overflow:hidden}.home-channel-list li.s3 .p-info li a span img{width:auto;height:auto;position:absolute}.home-channel-list li.s3 .p-info li a:hover{color:#cb242b}.home-recommend-goods .special-title{padding-top:27px}.home-recommend-goods .special-title .title{width:108px;height:28px;float:left;padding:0!important;text-indent:-9999px;overflow:hidden;margin-right:30px;background-position:-219px -85px}.home-recommend-goods .special-title .time{color:#333;line-height:16px;float:left;font-size:13px;font-weight:bold;margin-top:1px}.home-recommend-goods .special-title .time .label{display:inline-block;position:relative;top:2px}.home-recommend-goods .special-title .time p{display:inline-block;margin-left:6px;font-size:28px;position:relative;top:5px;font-weight:normal}.home-promo-list{margin-bottom:13px}.home-promo-list li{float:left;margin-left:13px;width:290px;height:200px;border-radius:20px;-webkit-transition:all .2s linear 0s;-moz-transition:all .2s linear 0s;-ms-transition:all .2s linear 0s;-o-transition:all .2s linear 0s;transition:all .2s linear 0s}.home-promo-list li:first-child{margin:0 1px 0 0}.home-promo-list li:hover{box-shadow:0 12px 36px rgba(0,0,0,0.1)}.home-promo-list li a{display:block;height:200px}.home-promo-list img{width:290px;height:200px;border-radius:10px}.index-channel-floor .h .title{font-size:26px;color:#333;padding:27px 0 13px 0}
</style>
<!--双12 header增加背景图的 字体颜色改变-->
<!-- 20130904-热门板-start -->
<div class="hot-board hot-board-index">
    <!--ads start-->
    <div class="ec-slider" id="index_slider">
        <ul>
            <li ID='firstImg' style="background:url('picture/aq4jhbuef1mqcktahpxhc.jpg') 50% 0px no-repeat ;display: block;">
                <div style="width:100%;">
                    <img src="picture/aq4jhbuef1mqcktahpxhc.jpg" style="display:none;"/>
                    <a style="width:100%;height:550px;display:block;" href="https://sale.vmall.com/honor.html" target="_blank" onclick="pushSliderMsg('picture/aq4jhbuef1mqcktahpxhc.jpg','https://sale.vmall.com/honor.html','1')"></a>
                </div>
            </li>

        </ul>
    </div>
    <ul></ul><ul></ul>

    <script>
        ec.ready(function(){
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('images/qyjalrh5a80h9opp0pus.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://sale.vmall.com/huawei.html\" target=\"_blank\" onclick=\"pushSliderMsg('images/qyjalrh5a80h9opp0pus.jpg','https://sale.vmall.com/huawei.html',2);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2019-01/o2IvktwwULHEwcCQv8hW.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://www.vmall.com/product/10086785341226.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2019-01/o2IvktwwULHEwcCQv8hW.jpg','https://www.vmall.com/product/10086785341226.html',3);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2019-01/OZ1YUW3YBGxy7ODS3pHe.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://sale.vmall.com/hwmate.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2019-01/OZ1YUW3YBGxy7ODS3pHe.jpg','https://sale.vmall.com/hwmate.html',4);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2019-01/uGayVqdIqxtyuikcpMaW.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://www.vmall.com/product/10086115278570.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2019-01/uGayVqdIqxtyuikcpMaW.jpg','https://www.vmall.com/product/10086115278570.html',5);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2018-12/lfRiScLa0ESBp28ggfW4.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://www.vmall.com/product/10086254040251.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2018-12/lfRiScLa0ESBp28ggfW4.jpg','https://www.vmall.com/product/10086254040251.html',6);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2019-01/dafcGAbZrSJ89ndNZvV2.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://www.vmall.com/product/10086134839130.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2019-01/dafcGAbZrSJ89ndNZvV2.jpg','https://www.vmall.com/product/10086134839130.html',7);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);
            var imgLi=document.createElement("li");
            imgLi.setAttribute("class","ec-slider-item");
            imgLi.setAttribute("style","background: url('https://res.vmallres.com/pimages//sale/2019-01/auSKBQ8QmlJEjUqz42on.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: none; position: absolute;");
            imgLi.innerHTML="<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://www.vmall.com/product/10086758019118.html\" target=\"_blank\" onclick=\"pushSliderMsg('https://res.vmallres.com/pimages//sale/2019-01/auSKBQ8QmlJEjUqz42on.jpg','https://www.vmall.com/product/10086758019118.html',8);\"></a></div>";
            $("#index_slider").children("ul").append(imgLi);

            ec.load("ec.slider", {
                callback : function() {
                    $("#index_slider").slider({
                        width:     '100%', //必须
                        height:     550, //必须
                        style : 3,                    //1显示分页，2只显示左右箭头,3两者都显示
                        pause : 5000,           //间隔时间
                        auto : true,
                        minWidth : 1200,
                        showNumber:false,
                        circleBtn:true
                    });
                }
            });

            setTimeout(function () {
                $("#index_slider").children("ul").children("li").first().attr("class","ec-slider-item");
                $("#index_slider").children("ul").children("li").first().attr("style","background: url('images/aq4jhbuef1mqcktahpxh.jpg') 50% 0px no-repeat; ; width: 100%; height: 550px; display: block; position: absolute;");
                $("#index_slider").children("ul").children("li").first().html("<div style=\"width:100%;\" class=\"ec-slider-item-img\"><a style=\"width:100%;height:550px;display:block;\" href=\"https://sale.vmall.com/honor.html\" target=\"_blank\" onclick=\"pushSliderMsg('images/aq4jhbuef1mqcktahpxh.jpg','https://sale.vmall.com/honor.html','1')\"></a></div>");

            }, 7000);
        });

        //首页轮播数据上报
        function pushSliderMsg(adid,url,location)
        {
            var value = {
                "UID":ec.util.cookie.get("uid"),
                "TID":getPtid(),
                "TIME":getTime(),
                "CONTENT":
                    {
                        "ADID":adid,
                        "URL":url,
                        "location":location,
                        "click":"1"
                    }
            };
            ec.code.addAnalytics({hicloud:true});
            _paq.push(["trackLink","300010701", "link", value]);
            ec.account.dapPushMsg("300010701",value,"click");
        }
    </script>
    <div class="mask"><span></span></div>
    <!--ads end-->
</div><!-- 20130904-热门板-end -->

<!--//20161123 弹出框-->


<!-- 2017-02-15-菜单栏-start -->
<div class="home-channel-menu">

    <div class="layout relative">


        <div class="channel-floor-0 relative">
            <div class="h">
                <div class="home-channel-main">
                    <ul class="home-channel-list clearfix home-channel-img6">
                        <li class="fl s1">
                            <div id="gg_login" class="i-mall-prompt clearfix hide">
                                <div class="relative fl w-name">
                                    <a  href="/member?t=1546928148275timestamp" rel="nofollow" timeType="timestamp" onclick = "pushMemberMsg('头像','/member?t=1546928148275timestamp')">
                                        <img id="gg_customerPic" src="picture/img_not_logged_in.png" alt="">
                                    </a>
                                </div>
                                <div class="fl">
                                    <div class="w-info">您好！<span  id="gg_loginName"></span>。</div>

                                    <div class="w-btn">
                                        <a id="oldPeople" style="display:none" class="new" href="/member/msg?t=1546928148275timestamp" onclick = "pushMemberMsg('消息中心','/member/msg?t=1546928148275timestamp">消息中心</a>
                                        <a id="newPeople" class="new" href="https://sale.vmall.com/welcome.html" target="_blank" onclick = "pushMemberMsg('新人福利','href="https://sale.vmall.com/welcome.html')">新人福利</a>
                                        <a class="" href="/privilege" target="_blank" onclick = "pushMemberMsg('特权频道','/privilege')">会员频道</a>
                                    </div>
                                </div>
                            </div>
                            <div id="gg_unlogin" class="i-mall-prompt clearfix">
                                <div class="relative fl w-name">
                                    <img src="picture/img_not_logged_in.png" alt="">
                                </div>
                                <div class="fl">
                                    <div id="gg_login_url" class="w-reg">
                                        您好！
                                        <c:if test="${empty user}">
                                        <script>document.write('<a href="javascript:;"  rel="nofollow"  >请登录</a>');</script>
                                        <span>&nbsp;/&nbsp;</span>
                                        <a href="userRegister" rel="nofollow" target="_blank" >注册</a>
                                        </c:if>
                                        <c:if test="${!empty user}">
                                            <script>document.write('<a href="changeUserInfo?uid=${user.id}"  rel="nofollow"  >${user.name}</a>');</script>
                                            <span>&nbsp;/&nbsp;</span>
                                            <a href="loggout" rel="nofollow" target="_blank" >退出</a>
                                        </c:if>

                                    </div>
                                    <div class="w-btn">
                                        <a class="new" href="https://sale.vmall.com/welcome.html" target="_blank" onclick = "pushMemberMsg('新人福利','https://sale.vmall.com/welcome.html')">新人福利</a>
                                        <a class="" href="/privilege" target="_blank" onclick = "pushMemberMsg('会员频道','/privilege')">会员频道</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="fl s2">
                            <ul class="clearfix">
                                <li>
                                    <a href="http://company.vmall.com" target="_blank" onclick="pushMsgMenu(1,'300010901','PC首页功能导航_企业购特惠','http://company.vmall.com')">
                                        <div class="p-img">
                                            <img class="img0" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="企业购特惠">
                                        </div>
                                        <div class="p-dec">企业购特惠</div></a>
                                </li>
                                <li>
                                    <a href="https://www.vmall.com/recycle" target="_blank" onclick="pushMsgMenu(2,'300010901','PC首页功能导航_以旧换新','https://www.vmall.com/recycle')">
                                        <div class="p-img">
                                            <img class="img1" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="以旧换新">
                                        </div>
                                        <div class="p-dec">以旧换新</div></a>
                                </li>
                                <li>
                                    <a href="https://www.vmall.com/privilege" target="_blank" onclick="pushMsgMenu(3,'300010901','PC首页功能导航_会员领券','https://www.vmall.com/privilege')">
                                        <div class="p-img">
                                            <img class="img2" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="会员领券">
                                        </div>
                                        <div class="p-dec">会员领券</div></a>
                                </li>
                                <li>
                                    <a href="https://www.vmall.com/product/10086789934944.html" target="_blank" onclick="pushMsgMenu(4,'300010901','PC首页功能导航_明星同款','https://www.vmall.com/product/10086789934944.html')">
                                        <div class="p-img">
                                            <img class="img3" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="明星同款">
                                        </div>
                                        <div class="p-dec">明星同款</div></a>
                                </li>
                                <li>
                                    <a href="https://www.vmall.com/product/10086894759259.html" target="_blank" onclick="pushMsgMenu(5,'300010901','PC首页功能导航_畅享9新品','https://www.vmall.com/product/10086894759259.html')">
                                        <div class="p-img">
                                            <img class="img4" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="畅享9新品">
                                        </div>
                                        <div class="p-dec">畅享9新品</div></a>
                                </li>
                                <li>
                                    <a href="https://sale.vmall.com/easybuy.html" target="_blank" onclick="pushMsgMenu(6,'300010901','PC首页功能导航_优享购','https://sale.vmall.com/easybuy.html')">
                                        <div class="p-img">
                                            <img class="img5" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="优享购">
                                        </div>
                                        <div class="p-dec">优享购</div></a>
                                </li>
                            </ul>
                        </li>
                        <li class="fl s3">
                            <div class="p-notice clearfix">
                                <div class="icon-notice fl">
                                    <a href="/notice-list" title="商城公告" onclick="pushMsgNotice('2')">
                                        <span>公告</span>
                                    </a>
                                </div>
                                <div class="p-notice-content" id="notice">
                                    <ul class="p-notice-list fl">
                                        <li><a href="/notice-6600" target="_blank" onclick="pushMsgNotice('1')">华为企业购•感恩回馈</a></li>
                                        <li><a href="/notice-6594" target="_blank" onclick="pushMsgNotice('1')">荣耀年货节 全场最高省1100元</a></li>
                                        <li><a href="/notice-6580" target="_blank" onclick="pushMsgNotice('1')">荣耀元旦活动中奖名单公布</a></li>
                                        <li><a href="/notice-6574" target="_blank" onclick="pushMsgNotice('1')">荣耀圣诞、周年庆活动中奖名单公布</a></li>
                                        <li><a href="/notice-6568" target="_blank" onclick="pushMsgNotice('1')">华为智选生态产品新品上市购机中奖名单公示</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="p-info">
                                <ul class="clearfix">
                                    <li>
                                        <a href="https://www.vmall.com/priority" target="_blank" rel="nofollow" onclick="pushMsgMenu(1,'300011101','PC首页功能导航_优购码','https://www.vmall.com/priority')">
                                            <span><img class="img0" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="优购码"></span>优购码
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://sale.vmall.com/smrz.html" target="_blank" rel="nofollow" onclick="pushMsgMenu(2,'300011101','PC首页功能导航_实名认证','https://sale.vmall.com/smrz.html')">
                                            <span><img class="img1" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="实名认证"></span>实名认证
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.vmall.com/order/tcsProductIndex" target="_blank" rel="nofollow" onclick="pushMsgMenu(3,'300011101','PC首页功能导航_补购保障','https://www.vmall.com/order/tcsProductIndex')">
                                            <span><img class="img2" src="picture/8313727ad4dbf6400f8dcc4465ef539a.png" alt="补购保障"></span>补购保障
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="">
                    <ul class="home-promo-list clearfix">
                        <li><a target="_blank" href="https://www.vmall.com/product/10086134839130.html" class="item"><img alt="荣耀" src="picture/016de7yovzxokehefixq.jpg" /></a></li>
                        <li><a target="_blank" href="https://www.vmall.com/product/10086885129494.html" class="item"><img alt="华为" src="picture/wvdfldlj8kdsffldvl4d.png" /></a></li>
                        <li><a target="_blank" href="https://www.vmall.com/product/10086286769025.html" class="item"><img alt="荣耀" src="picture/0agk37qfhcqb0e42czsa.png" /></a></li>
                        <li><a target="_blank" href="https://sale.vmall.com/nova.html" class="item"><img alt="华为" src="picture/mapsehogj6wc7xc8eoox.png" /></a></li>
                    </ul>
                </div>
            </div>
            <div class="b">
                <!--20170222 限时特惠 start-->
                <!--20170222 限时特惠 end-->
            </div>
            <div class="b">
                <!--20170222 热销单品 start-->
                <!-- 20170222-首页--热销单品-start -->
                <div class="home-recommend-goods home-hot-goods index-channel-floor">
                    <div class="h">
                        <h2 class="title change-title">热销单品</h2>
                    </div>
                    <div class="b clearfix">
                        <div class="span-232 fl">
                            <ul class="grid-promo-list clearfix">
                                <input type="hidden" id="contengID" value="0-6">
                                <li class="grid-items grid-items-sm">
                                    <a class="thumb" href="https://www.vmall.com/product/10086894759259.html" target="_blank" onclick = "pushHomeHotGoodsAdvertMsg('picture/xowrtaqxvmzl2bdru7hv.jpg','https://www.vmall.com/product/10086894759259.html')">
                                        <img data-lazy-src="picture/xowrtaqxvmzl2bdru7hv.jpg" alt="" />
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="span-968 fl">
                            <ul class="grid-list clearfix">
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086115278570.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,2,'10086322307476')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1546504315873mp.png" alt="【1元订金抵20】荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量 标配版 全网通 3GB+32GB（极光蓝）"/>
                                        </p>
                                        <div class="grid-title">荣耀畅玩8A</div>
                                        <p class="grid-desc">1元订金抵20&nbsp; </p>
                                        <p class="grid-price">&yen;799</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#68BEFF">首发</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086393052224.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,3,'10086017024057')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1539242726882mp.png" alt="HUAWEI Mate 20 Pro (UD) 8GB+128GB 全网通版（亮黑色）"/>
                                        </p>
                                        <div class="grid-title">HUAWEI Mate 20 Pro</div>
                                        <p class="grid-desc">6期免息|老用户享好礼&nbsp; </p>
                                        <p class="grid-price">&yen;5999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="https://www.vmall.com/product/570379791.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,4,'574239706')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/1539657732130.png" alt="荣耀V10" />
                                        </p>
                                        <div class="grid-title">荣耀V10</div>
                                        <p class="grid-desc">限时优惠1100&nbsp; </p>
                                        <p class="grid-price">&yen;1999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#FF6A6E">爆款</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086211949427.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,5,'10086058453007')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1542769704670mp.png" alt="HUAWEI Mate 20 X 6GB+128GB 全网通版（宝石蓝）"/>
                                        </p>
                                        <div class="grid-title">HUAWEI Mate 20 X</div>
                                        <p class="grid-desc">6期免息|老用户享好礼&nbsp; </p>
                                        <p class="grid-price">&yen;4999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="https://www.vmall.com/product/10086785341226.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,6,'10086431508342')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/1539566459947.png" alt="荣耀10" />
                                        </p>
                                        <div class="grid-title">荣耀10</div>
                                        <p class="grid-desc">限时优惠600&nbsp; </p>
                                        <p class="grid-price">&yen;2199</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086915330134.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,7,'10086778773020')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1542765018837mp.png" alt="HUAWEI P20 6GB+64GB 全网通版（极光闪蝶）"/>
                                        </p>
                                        <div class="grid-title">HUAWEI P20</div>
                                        <p class="grid-desc">积分兑券可优惠200+赠好礼&nbsp; </p>
                                        <p class="grid-price">&yen;3388</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086372796926.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,8,'10086740350995')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1541571374644mp.png" alt="荣耀畅玩8C 两天一充 莱茵护眼 超清刘海屏 4GB大运存  全网通标配版 4GB+32GB（极光蓝）"/>
                                        </p>
                                        <div class="grid-title">荣耀畅玩8C</div>
                                        <p class="grid-desc">32G版限时优惠130&nbsp; </p>
                                        <p class="grid-price">&yen;999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items ">
                                    <a class="thumb" href="/product/10086471194207.html" target="_blank" onclick = "pushHomeHotGoodsMsg(this,9,'10086587737324')">
                                        <p class="grid-img">
                                            <img data-lazy-src="picture/428_428_1542767263318mp.png" alt="HUAWEI P20 Pro 6GB+128GB 全网通版（极光闪蝶）"/>
                                        </p>
                                        <div class="grid-title">HUAWEI P20 Pro</div>
                                        <p class="grid-desc">积分兑券可优惠200+赠好礼&nbsp; </p>
                                        <p class="grid-price">&yen;4988</p>
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01" style="background-color:#FF6A6E">爆款</span></em>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 20170222-首页-热销单品-end -->
                <script>
                    function pushHomeHotGoodsAdvertMsg(adid,url)
                    {
                        var value = {
                            "UID":ec.util.cookie.get("uid"),
                            "TID":getPtid(),
                            "TIME":getTime(),
                            "CONTENT":
                                {
                                    "ADID":adid,
                                    "URL":url,
                                    "location":"1",
                                    "click":"1"
                                }
                        };
                        ec.account.dapPushMsg("300011301",value,"click");
                        ec.code.addAnalytics({hicloud:true});
                        _paq.push(["trackLink","300011301", "link", value]);
                    }

                    function pushHomeHotGoodsMsg(obj,location,skuId)
                    {
                        var row;
                        var column;
                        if(location<6)
                        {
                            row = "1";
                            column = location;
                        }
                        else if(location<10)
                        {
                            row = "2";
                            column = location-4;
                        }
                        var url = obj.href;
                        var value = {
                            "UID":ec.util.cookie.get("uid"),
                            "TID":getPtid(),
                            "TIME":getTime(),
                            "CONTENT":
                                {
                                    "SKUID":skuId ,
                                    "URL":url,
                                    "location":location,
                                    "row":row,
                                    "column ":""+column,
                                    "click":"1"
                                }
                        };
                        ec.account.dapPushMsg("300011401",value,"click");
                        ec.code.addAnalytics({hicloud:true});
                        _paq.push(["trackLink","300011401", "link", value]);
                    }
                </script>		        <!--20170222 热销单品 end-->
            </div>



            <div class="b">
                <!--20170223 精品推荐 start-->
                <!-- 20170223-首页-精品推荐-start -->
                <div class="home-recommend-goods index-channel-floor">
                    <div class="h">
                        <h2 class="title-1">精品推荐</h2>
                    </div>
                    <div class="b">
                        <div id="goodsRecommend-recommend" class="goods-rolling swiper-container relative">
                            <ul id="" class="grid-list swiper-wrapper clearfix">
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086789934944.html" target="_blank" onclick="pushGoodsRecommendMsg('10086772693857',this,'1')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542706656249mp.png" alt="荣耀10青春版 幻彩渐变 2400万AI自拍 6.21英寸高屏占比珍珠屏 全网通 4GB+64GB（渐变蓝）"/>
                                            </p>
                                            <p class="grid-desc">送小天鹅音箱+自拍杆&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀10青春版</div>
                                        <p class="grid-price">&yen;1399</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086200630069.html" target="_blank" onclick="pushGoodsRecommendMsg('10086686539979',this,'2')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545200416146mp.png" alt="荣耀存储（白色）"/>
                                            </p>
                                            <p class="grid-desc">新品首发优惠20元&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀存储</div>
                                        <p class="grid-price">&yen;679</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086689592595.html" target="_blank" onclick="pushGoodsRecommendMsg('10086323916090',this,'3')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1544773892921mp.png" alt="（华为）HUAWEI MateBook 13 全面屏轻薄性能本 皓月银 i5 8GB 256GB 集显"/>
                                            </p>
                                            <p class="grid-desc">新品上市  享3期免息&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook 13</div>
                                        <p class="grid-price">&yen;4999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086100906136.html" target="_blank" onclick="pushGoodsRecommendMsg('10086429153459',this,'4')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545200938827mp.png" alt="荣耀路由Pro 2（白色）"/>
                                            </p>
                                            <p class="grid-desc">新品开售优惠20元&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀路由Pro2</div>
                                        <p class="grid-price">&yen;329</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086635184440.html" target="_blank" onclick="pushGoodsRecommendMsg('10086359934120',this,'5')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1543041553584mp.png" alt="HUAWEI FreeBuds 2 无线耳机 （陶瓷白）"/>
                                            </p>
                                            <p class="grid-desc">骨声纹识别 智慧声控*&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI FreeBuds 2系列</div>
                                        <p class="grid-price">&yen;799</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086786653860.html" target="_blank" onclick="pushGoodsRecommendMsg('10086953522941',this,'6')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1538989229309mp.png" alt="荣耀MagicBook 锐龙版 14英寸轻薄笔记本电脑 Ryzen R5-2500U 8GB 256GB（冰河银）"/>
                                            </p>
                                            <p class="grid-desc">高性能金属轻薄本&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀MagicBook锐龙版</div>
                                        <p class="grid-price">&yen;3799</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086066822495.html" target="_blank" onclick="pushGoodsRecommendMsg('10086691766584',this,'7')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545268730575mp.png" alt="荣耀FlyPods青春版 无线耳机（铃兰白）"/>
                                            </p>
                                            <p class="grid-desc">购机赠多重好礼&nbsp; </p>
                                        </div>
                                        <div class="grid-title">FlyPods无线耳机青春版</div>
                                        <p class="grid-price">&yen;399</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品/可享免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086127035863.html" target="_blank" onclick="pushGoodsRecommendMsg('10086311663325',this,'8')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1543910753321mp.png" alt="HUAWEI WATCH GT 运动款 （黑色）"/>
                                            </p>
                                            <p class="grid-desc">稀缺货源  现货速发&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI WATCH GT</div>
                                        <p class="grid-price">&yen;1288</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/516255415.html" target="_blank" onclick="pushGoodsRecommendMsg('553104015',this,'9')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542765833879mp.png" alt="荣耀Waterplay 防水影音平板 3GB+32GB WiFi版（皓月银）"/>
                                            </p>
                                            <p class="grid-desc">最高降300 享3期免息&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀WaterPlay</div>
                                        <p class="grid-price">&yen;1499</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086372796926.html" target="_blank" onclick="pushGoodsRecommendMsg('10086740350995',this,'10')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1541571374644mp.png" alt="荣耀畅玩8C 两天一充 莱茵护眼 超清刘海屏 4GB大运存  全网通标配版 4GB+32GB（极光蓝）"/>
                                            </p>
                                            <p class="grid-desc">4GB+32G版限时优惠130&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀畅玩8C</div>
                                        <p class="grid-price">&yen;999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">热卖</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086268042691.html" target="_blank" onclick="pushGoodsRecommendMsg('10086253509221',this,'11')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1540544249192mp.png" alt="荣耀手表魔法系列（熔岩黑）"/>
                                            </p>
                                            <p class="grid-desc">最高优惠11 享3期免息&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀手表魔法系列</div>
                                        <p class="grid-price">&yen;888</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086880639989.html" target="_blank" onclick="pushGoodsRecommendMsg('10086608131909',this,'12')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545220584404mp.png" alt="华为路由 WS5200 增强版（白色）"/>
                                            </p>
                                            <p class="grid-desc">新品上市&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为路由WS5200增强版</div>
                                        <p class="grid-price">&yen;229</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086862057573.html" target="_blank" onclick="pushGoodsRecommendMsg('10086477642869',this,'13')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1546411816762mp.png" alt="荣耀YOYO智能音箱（白色）"/>
                                            </p>
                                            <p class="grid-desc">智能通话 能听会说&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀YOYO智能音箱</div>
                                        <p class="grid-price">&yen;199</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086000689735.html" target="_blank" onclick="pushGoodsRecommendMsg('10086310737763',this,'14')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539915278180mp.png" alt="（华为）HUAWEI MateBook X Pro 13.9英寸笔记本电脑 深空灰 I7/8GB/512GB 集显"/>
                                            </p>
                                            <p class="grid-desc">享6期免息&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook X Pro</div>
                                        <p class="grid-price">&yen;10988</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086335437779.html" target="_blank" onclick="pushGoodsRecommendMsg('10086931778866',this,'15')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1540863768758mp.png" alt="荣耀FlyPods Pro无线耳机 高配版（魅丽红）"/>
                                            </p>
                                            <p class="grid-desc">骨声纹ID黑科技&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀FlyPods Pro无线耳机</div>
                                        <p class="grid-price">&yen;999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品/可享免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/21046116.html" target="_blank" onclick="pushGoodsRecommendMsg('906818151',this,'16')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542768394394mp.png" alt="【新品】（华为）HUAWEI MateBook D（2018版）15.6英寸轻薄笔记本电脑 皓月银+I5/8GB/128GB/1TB"/>
                                            </p>
                                            <p class="grid-desc">限量赠双肩包&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook D</div>
                                        <p class="grid-price">&yen;5488</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086209439106.html" target="_blank" onclick="pushGoodsRecommendMsg('10086469441567',this,'17')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542852832819mp.png" alt="华为畅享 MAX 4GB+64GB 全网通版（幻夜黑）"/>
                                            </p>
                                            <p class="grid-desc">大屏大视界&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为畅享 MAX</div>
                                        <p class="grid-price">&yen;1699</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086527872485.html" target="_blank" onclick="pushGoodsRecommendMsg('10086466203116',this,'18')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539243364035mp.png" alt="荣耀平板5 10.1英寸 3GB+32GB WIFI标准版（苍穹灰）"/>
                                            </p>
                                            <p class="grid-desc">最高直降100元&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀平板5</div>
                                        <p class="grid-price">&yen;1299</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/889979598.html" target="_blank" onclick="pushGoodsRecommendMsg('530206332',this,'19')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539767984482mp.png" alt="（华为）HUAWEI MateBook E 12英寸时尚二合一笔记本电脑 M3/4GB/128GB"/>
                                            </p>
                                            <p class="grid-desc">2K高清触摸屏&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook E</div>
                                        <p class="grid-price">&yen;4288</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086733534868.html" target="_blank" onclick="pushGoodsRecommendMsg('10086646814014',this,'20')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542854080066mp.png" alt="华为畅享8 4GB+64GB 全网通高配版（金色）"/>
                                            </p>
                                            <p class="grid-desc">千元双摄&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为畅享8</div>
                                        <p class="grid-price">&yen;1199</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/417236260.html" target="_blank" onclick="pushGoodsRecommendMsg('557586395',this,'21')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545126483416mp.png" alt="（华为）HUAWEI MateBook X 13英寸轻薄笔记本电脑 深空灰 （I7/8GB/512GB）"/>
                                            </p>
                                            <p class="grid-desc">2K高清屏&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook X</div>
                                        <p class="grid-price">&yen;8688</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">免息</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086094364044.html" target="_blank" onclick="pushGoodsRecommendMsg('10086710725203',this,'22')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539912870678mp.png" alt="荣耀畅玩7 全网通版 2GB+16GB（黑色）"/>
                                            </p>
                                            <p class="grid-desc">小巧全面屏&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀畅玩7</div>
                                        <p class="grid-price">&yen;599</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086893318670.html" target="_blank" onclick="pushGoodsRecommendMsg('10086612323957',this,'23')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1540623612925.png" alt="华为平板 M5 青春版" />
                                            </p>
                                            <p class="grid-desc">智能声控 大屏娱乐&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为平板 M5 青春版</div>
                                        <p class="grid-price">&yen;1899</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/973611543.html" target="_blank" onclick="pushGoodsRecommendMsg('328205796',this,'24')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542767712417mp.png" alt="华为运动蓝牙耳机（红色）"/>
                                            </p>
                                            <p class="grid-desc">专业降噪通话 待机10天&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为运动蓝牙耳机</div>
                                        <p class="grid-price">&yen;259</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086572258093.html" target="_blank" onclick="pushGoodsRecommendMsg('10086952247635',this,'25')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539569367943mp.png" alt="【新品首发】华为手环 B5 商务版（静谧蓝）"/>
                                            </p>
                                            <p class="grid-desc">彩屏健康手环&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为手环 B5</div>
                                        <p class="grid-price">&yen;1199</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/936223974.html" target="_blank" onclick="pushGoodsRecommendMsg('534967719',this,'26')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542788291468mp.png" alt="华为智能体脂秤"/>
                                            </p>
                                            <p class="grid-desc">健身减脂必备&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为智能体脂秤</div>
                                        <p class="grid-price">&yen;169</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086423109158.html" target="_blank" onclick="pushGoodsRecommendMsg('10086794601109',this,'27')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1541036554232.png" alt="华为AI音箱" />
                                            </p>
                                            <p class="grid-desc">丹拿音质 声纹识别&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为AI音箱</div>
                                        <p class="grid-price">&yen;399</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086686072684.html" target="_blank" onclick="pushGoodsRecommendMsg('10086455419044',this,'28')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1540628828647mp.png" alt="荣耀手环4 标准版（陨石黑）"/>
                                            </p>
                                            <p class="grid-desc">触控大彩屏 实时心率检测&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀手环4</div>
                                        <p class="grid-price">&yen;195</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086687727933.html" target="_blank" onclick="pushGoodsRecommendMsg('10086858982353',this,'29')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1540802820764mp.png" alt="华为无线充电器（Max 15W）白色"/>
                                            </p>
                                            <p class="grid-desc">支持Mate 20 Pro及iPhone X系列充电&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为无线充电器</div>
                                        <p class="grid-price">&yen;99</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086305784772.html" target="_blank" onclick="pushGoodsRecommendMsg('10086617332760',this,'30')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542765208952mp.png" alt="荣耀Note10 全网通 6GB+64GB 幻影蓝 AMOLED全面屏手机 AI智能 GT游戏加速 双卡双待 长续航"/>
                                            </p>
                                            <p class="grid-desc">赠价值248元豪华礼包&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀Note10</div>
                                        <p class="grid-price">&yen;2699</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">特惠</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086194505402.html" target="_blank" onclick="pushGoodsRecommendMsg('10086572770021',this,'31')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1541122609057mp.png" alt="荣耀Waterplay 8英寸 防水影音平板 4GB+64GB WiFi版（皓月银）"/>
                                            </p>
                                            <p class="grid-desc">限时直降100元&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀Waterplay 8英寸</div>
                                        <p class="grid-price">&yen;1399</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/194128141.html" target="_blank" onclick="pushGoodsRecommendMsg('553811697',this,'32')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1538985401864mp.png" alt="荣耀智能体脂秤（白色）"/>
                                            </p>
                                            <p class="grid-desc">BIA测脂/高精准传感&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀智能体脂秤</div>
                                        <p class="grid-price">&yen;99</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">限时优惠70元</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086653392602.html" target="_blank" onclick="pushGoodsRecommendMsg('10086354651877',this,'33')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1540538218158.png" alt="华为儿童手表 3 Pro" />
                                            </p>
                                            <p class="grid-desc">4G全网通 高清拍照&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为儿童手表 3 Pro</div>
                                        <p class="grid-price">&yen;988</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086749611489.html" target="_blank" onclick="pushGoodsRecommendMsg('10086567817541',this,'34')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1540623928793.png" alt="华为畅享平板" />
                                            </p>
                                            <p class="grid-desc">10.1英寸大屏&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为畅享平板</div>
                                        <p class="grid-price">&yen;1299</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086007028117.html" target="_blank" onclick="pushGoodsRecommendMsg('10086094709326',this,'35')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539912533064mp.png" alt="荣耀路由 X2（白色）"/>
                                            </p>
                                            <p class="grid-desc">双核双千兆&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀路由X2</div>
                                        <p class="grid-price">&yen;147</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">首发</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086250287882.html" target="_blank" onclick="pushGoodsRecommendMsg('10086050080641',this,'36')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1540623534179.png" alt="华为备咖存储" />
                                            </p>
                                            <p class="grid-desc">1T大容量&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为备咖存储</div>
                                        <p class="grid-price">&yen;699</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/993405255.html" target="_blank" onclick="pushGoodsRecommendMsg('419942774',this,'37')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1538991695890mp.png" alt="荣耀手环3 标准版（碳晶黑）"/>
                                            </p>
                                            <p class="grid-desc">50米防水 专业睡眠检测&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀手环3</div>
                                        <p class="grid-price">&yen;129</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">特惠</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/369652507.html" target="_blank" onclick="pushGoodsRecommendMsg('532696479',this,'38')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1538991432470mp.png" alt="荣耀畅玩手环 A2（魔法黑）"/>
                                            </p>
                                            <p class="grid-desc">OLED大屏，防尘防水&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀畅玩手环 A2</div>
                                        <p class="grid-price">&yen;129</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">限时优惠20元</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086958063836.html" target="_blank" onclick="pushGoodsRecommendMsg('10086943604110',this,'39')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542765330080mp.png" alt="荣耀路由2S（白色）"/>
                                            </p>
                                            <p class="grid-desc">4颗信号放大器 信号更穿墙&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀路由2S</div>
                                        <p class="grid-price">&yen;179</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/794044956.html" target="_blank" onclick="pushGoodsRecommendMsg('500647761',this,'40')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542768089796mp.png" alt="华为全景相机（蓝色）"/>
                                            </p>
                                            <p class="grid-desc">360度照片/视频&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为全景相机</div>
                                        <p class="grid-price">&yen;599</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/270976970.html" target="_blank" onclick="pushGoodsRecommendMsg('976288056',this,'41')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542768153833mp.png" alt="HUAWEI WATCH 2 Pro华为新款智能手表 4G版（钛银灰）"/>
                                            </p>
                                            <p class="grid-desc">手机手表共享1个号码&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI WATCH 2 Pro</div>
                                        <p class="grid-price">&yen;2288</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086872833199.html" target="_blank" onclick="pushGoodsRecommendMsg('10086132726986',this,'42')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1538991969182mp.png" alt="荣耀心晴耳机 心率智能耳机（幻夜黑）"/>
                                            </p>
                                            <p class="grid-desc">心率智能耳机&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀心晴耳机</div>
                                        <p class="grid-price">&yen;99</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">限时优惠30元</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/875753311.html" target="_blank" onclick="pushGoodsRecommendMsg('189161731',this,'43')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542854411097mp.png" alt="荣耀xSport 运动蓝牙耳机（魅焰红）"/>
                                            </p>
                                            <p class="grid-desc">11h长续航 狂甩不掉&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀xSport 运动蓝牙耳机</div>
                                        <p class="grid-price">&yen;199</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">限时优惠50元</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086029405648.html" target="_blank" onclick="pushGoodsRecommendMsg('10086943852365',this,'44')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542856174725mp.png" alt="荣耀多口充电器SuperCharge快充版（白色）"/>
                                            </p>
                                            <p class="grid-desc">小巧精悍一个顶仨&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀多口充电器SuperCharge快充版</div>
                                        <p class="grid-price">&yen;129</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">限时优惠20元</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086030735533.html" target="_blank" onclick="pushGoodsRecommendMsg('10086679949457',this,'45')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1542769173855mp.png" alt="华为平板 M5 8.4英寸 4GB+32GB WiFi版（香槟金）"/>
                                            </p>
                                            <p class="grid-desc">赠保护套&nbsp; </p>
                                        </div>
                                        <div class="grid-title">华为平板 M5 8.4英寸</div>
                                        <p class="grid-price">&yen;2088</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/570379791.html" target="_blank" onclick="pushGoodsRecommendMsg('574239706',this,'46')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1511858765170mp.jpg" alt="荣耀V10 全网通高配版 6GB+64GB（魅丽红）"/>
                                            </p>
                                            <p class="grid-desc">限时优惠800&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀V10</div>
                                        <p class="grid-price">&yen;1999</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="https://www.vmall.com/product/10086576787089.html" target="_blank" onclick="pushGoodsRecommendMsg('10086729542271',this,'47')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/1542696451354.png" alt="荣耀Play" />
                                            </p>
                                            <p class="grid-desc">最高优惠400赠豪华礼包&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀Play</div>
                                        <p class="grid-price">&yen;1699</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#FF6A6E">爆款</span> </em>
                                        </p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086000689735.html" target="_blank" onclick="pushGoodsRecommendMsg('10086057956784',this,'48')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1539915358351mp.png" alt="（华为）HUAWEI MateBook X Pro 13.9英寸笔记本电脑 皓月银 i5 8GB 256GB 集显"/>
                                            </p>
                                            <p class="grid-desc">&nbsp; </p>
                                        </div>
                                        <div class="grid-title">HUAWEI MateBook X Pro</div>
                                        <p class="grid-price">&yen;7988</p>
                                    </a>
                                </li>
                                <!--通过添加current 来实现 hover效果-->
                                <li class="grid-items swiper-slide">
                                    <a class="thumb" href="/product/10086328941253.html" target="_blank" onclick="pushGoodsRecommendMsg('10086414974416',this,'49')">
                                        <div class="grid-info">
                                            <p class="grid-img">
                                                <img data-lazy-src="picture/428_428_1545911847016mp.png" alt="荣耀小哨兵智能摄像机（白色）"/>
                                            </p>
                                            <p class="grid-desc">1月5日10:08开售&nbsp; </p>
                                        </div>
                                        <div class="grid-title">荣耀小哨兵智能摄像机</div>
                                        <p class="grid-price">&yen;199</p>
                                        <p class="grid-tips">
                                            <em class="thumb"> <span class="color01" style="background-color:#68BEFF">新品</span> </em>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                            <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                            <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                            <input type="hide" value = "10086772693857,10086686539979,10086323916090,10086429153459,10086359934120,10086953522941,10086691766584,10086311663325,553104015,10086740350995,10086253509221,10086608131909,10086477642869,10086310737763,10086931778866,906818151,10086469441567,10086466203116,530206332,10086646814014,557586395,10086710725203,10086612323957,328205796,10086952247635,534967719,10086794601109,10086455419044,10086858982353,10086617332760,10086572770021,553811697,10086354651877,10086567817541,10086094709326,10086050080641,419942774,532696479,10086943604110,500647761,976288056,10086132726986,189161731,10086943852365,10086679949457,574239706,10086729542271,10086057956784,10086414974416," id = "recommendSkuIds"/>
                        </div>
                    </div>
                </div>
                <!-- 20170223-首页-精品推荐-end -->
                <script>
                    function pushGoodsRecommendMsg(skuid,obj,location)
                    {
                        var value = {
                            "UID":ec.util.cookie.get("uid"),
                            "TID":getPtid(),
                            "TIME":getTime(),
                            "CONTENT":
                                {
                                    "SKUID":skuid ,
                                    "URL":obj.href,
                                    "location":location,
                                    "click":"1"
                                }
                        };
                        ec.account.dapPushMsg("300011501",value,"click");
                        ec.code.addAnalytics({hicloud:true});
                        _paq.push(["trackLink","300011501", "link", value]);
                    }
                </script>
                <!--20170223 精品推荐 end-->
            </div>

            <div></div>
        </div>
    </div>
</div>
<!-- 2017-02-15-菜单栏-end -->

<!-- 20160812 首页轮播图下方 end -->

<div class="channel-floor index-channel-floor">
    <div class="layout">
        <!-- 2017-02-15-banner-1200*110-start -->
        <div class="home-banner">
            <!-- 2017-02-15-banner-图片轮换-start -->
            <div class="home-banner-slideshow">
                <!-- 20130903-ad-图片轮换-start -->
                <div class="banner-slideshow">
                    <div class="hr-27"></div>
                    <div id="m-banner" class="ec-slider">
                        <ul class="ec-slider-list">
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://www.vmall.com/recycle" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第1位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/r4onkkluxcki82wyofoe.png" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://www.vmall.com/product/10086115278570.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第2位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/nondvdqclhsdvo349hzs.jpg" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/hwcompany.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第3位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/xz79clpk10krp8arvpx4.jpg" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/honorsmart.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第4位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/zmoo6goyjztyblvfgzn8.jpg" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/hwpj.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第5位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/gb38cwcsqnbxmikkujyo.jpg" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://www.vmall.com/product/10086983017283.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第6位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/zongtviwqrwwteouleyj.jpg" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/smarthome.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第7位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/uzuisr6akyn8ktmolzep.png" /></a></div></li>
                            <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/honornewproduct.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第8位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/9c1uer0whcsyfzmd4mgh.jpg" /></a></div></li>
                        </ul>
                    </div>
                    <div class="hr-13"></div>
                    <script>
                        ec.load("ec.slider", {
                            loadType : "lazy",
                            callback : function() {
                                $("#m-banner").slider({
                                    width: 1200, //　必须
                                    height: 120, //　必须
                                    style : 1, //　1显示分页，2只显示左右箭头,3两者都显示
                                    pause : 5000, 	//间隔时间
                                    auto : true
                                });
                            }
                        });

                    </script>
                </div>
            </div><!-- 2017-02-15-banner-图片轮换-end -->
        </div><!-- 2017-02-15-banner-1200*110-end -->
    </div>
</div>

<div class="event-float-layout index-channel-floor">
    <!--添加 fixed  position: fixed !important;top: 20px;z-index: 500;-->
    <div class="event-float">
        <div>
            <ul class="hover-list">
            </ul>
        </div>
    </div>
</div>


<!-- 2017-05-12-HOME right side navigation -start -->
<!-- 2017-05-12-HOME right side navigation -end -->


<!-- 2017-02-15-HOME GOOGLIST-start -->
<div class="home-channel-container relative index-channel-floor ">


    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 排除非4倍数的商品 -->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_654710">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">手机</h2>
                <ul class="channel-nav fl">
                    <li><a href="0/list-75" target="_blank" onclick="pushFoolChildrenMsg('1','手机','荣耀','/list-75')">荣耀</a></li>
                    <li><a href="/list-285" target="_blank" onclick="pushFoolChildrenMsg('1','手机','HUAWEI P系列','/list-285')">HUAWEI P系列</a></li>
                    <li><a href="/list-77" target="_blank" onclick="pushFoolChildrenMsg('1','手机','荣耀畅玩系列','/list-77')">荣耀畅玩系列</a></li>
                    <li><a href="/list-76" target="_blank" onclick="pushFoolChildrenMsg('1','手机','HUAWEI Mate系列','/list-76')">HUAWEI Mate系列</a></li>
                    <li><a href="/list-277" target="_blank" onclick="pushFoolChildrenMsg('1','手机','HUAWEI nova系列','/list-277')">HUAWEI nova系列</a></li>
                    <li><a href="/list-275" target="_blank" onclick="pushFoolChildrenMsg('1','手机','华为畅享系列','/list-275')">华为畅享系列</a></li>
                    <li><a href="/list-81" target="_blank" onclick="pushFoolChildrenMsg('1','手机','HUAWEI 麦芒系列','/list-81')">HUAWEI 麦芒系列</a></li>
                    <li><a href="/list-38" target="_blank" onclick="pushFoolChildrenMsg('1','手机','移动4G+专区','/list-38')">移动4G+专区</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-36" target="_blank" onclick="pushFoolMsg('1','手机','/list-36')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="#nowhere" target="_blank" onclick="pushFoolAdvertMsg('1','手机','picture/wmqw4fxtyi9tt3ri9lqm.jpg','wMQW4fXTYI9TT3rI9lQm.jpg','https://www.vmall.com/product/10086305784772.html')">
                                <img data-lazy-src="img/category/${cs[5].id}.jpg" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[5].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}" target="_blank" onclick = "pushFoolGoodsMsg(this,2,'1','手机','10086258120116','12')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle/${p.firstProductImage.id}.jpg" alt="荣耀Magic2 魔法全视屏 麒麟980AI芯片 屏内指纹 超广角AI三摄 全网通 6GB+128GB 渐变黑"/>
                                    </p>
                                </div>
                                <div class="grid-title">${p.name}</div>
                                <p class="grid-desc">购机享多重权益&nbsp;</p>
                                <p class="grid-price">${p.promotePrice}</p>
                            </a>
                        </li>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!--20170222 中通 start-->
    <div class="hr-27"></div>
    <div class="channel-floor index-channel-floor">
        <div class="layout">
            <!-- 2017-02-15-banner-1200*110-start -->
            <div class="home-banner">
                <!-- 2017-02-15-banner-图片轮换-start -->
                <div class="home-banner-slideshow">

                </div><!-- 2017-02-15-banner-图片轮换-end -->
            </div><!-- 2017-02-15-banner-1200*110-end -->
        </div>
    </div>
    <div class="hr-13"></div>
    <!--20170222 中通 end-->










    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_654718">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">笔记本电脑</h2>
                <ul class="channel-nav fl">
                    <li><a href="/list-41" target="_blank" onclick="pushFoolChildrenMsg('2','笔记本电脑','平板电脑','/list-41')">平板电脑</a></li>
                    <li><a href="/list-42" target="_blank" onclick="pushFoolChildrenMsg('2','笔记本电脑','笔记本电脑','/list-42')">笔记本电脑</a></li>
                    <li><a href="/list-317" target="_blank" onclick="pushFoolChildrenMsg('2','笔记本电脑','笔记本配件','/list-317')">笔记本配件</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-40" target="_blank" onclick="pushFoolMsg('2','笔记本电脑','/list-40')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <li class="grid-items grid-items-md ">
                            <a class="thumb" href="https://www.vmall.com/product/10086689592595.html" target="_blank" onclick="pushFoolAdvertMsg('2','笔记本电脑','picture/y64pdbwdbjbyichph0fi.png','y64PdbwdbjBYiCHpH0fi.png','https://www.vmall.com/product/10086689592595.html')">
                                <img data-lazy-src="picture/y64pdbwdbjbyichph0fi.png" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[4].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}" target="_blank" onclick = "pushFoolGoodsMsg(this,2,'2','笔记本电脑','10086488837838','12')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle/${p.firstProductImage.id}.jpg" alt="（华为）HUAWEI MateBook X Pro 13.9英寸笔记本电脑 深空灰 i5 8GB 256GB 独显"/>
                                    </p>
                                </div>
                                <div class="grid-title">${p.subTitle}</div>
                                <p class="grid-desc">享6期免息&nbsp;</p>
                                <p class="grid-price">&${p.promotePrice}</p>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="layout" id="lc_654706">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">智能穿戴</h2>
                <ul class="channel-nav fl">
                    <li><a href="/list-241" target="_blank" onclick="pushFoolChildrenMsg('4','智能穿戴','手环','/list-241')">手环</a></li>
                    <li><a href="/list-247" target="_blank" onclick="pushFoolChildrenMsg('4','智能穿戴','手表','/list-247')">手表</a></li>
                    <li><a href="/list-329" target="_blank" onclick="pushFoolChildrenMsg('4','智能穿戴','VR','/list-329')">VR</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-59" target="_blank" onclick="pushFoolMsg('4','智能穿戴','/list-59')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/10086268042691.html" target="_blank"  onclick="pushFoolAdvertMsg('4','智能穿戴','picture/zr5cbgbh0w1ytzq9lxsx.jpg','ZR5CbgBh0w1ytzq9LXsX.jpg','https://www.vmall.com/product/10086268042691.html')">
                                <img data-lazy-src="picture/zr5cbgbh0w1ytzq9lxsx.jpg" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[3].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}" target="_blank" onclick = "pushFoolGoodsMsg(this,2,'4','智能穿戴','10086311663325','13')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle/${p.firstProductImage.id}.jpg" alt="HUAWEI WATCH GT" />
                                    </p>
                                </div>
                                <div class="grid-title">${p.name}</div>
                                <p class="grid-desc">稀缺货源  现货速发&nbsp;</p>
                                <p class="grid-price">${p.promotePrice}</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                </p>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div id="goodsContent3" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/658947392.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540631328840mp.png" alt="HUAWEI WATCH 2 华为第二代智能运动手表 蓝牙版（碳晶黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">HUAWEI WATCH 2</div>
                                <p class="grid-desc">赠充电底座&nbsp; </p>
                                <p class="grid-price">&yen;1388</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="https://www.vmall.com/product/993405255.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538991695890mp_1.png" alt="荣耀手环3 标准版（碳晶黑）"/>
                                    </p>
                                    >
                                    <                        </divdiv class="grid-title">荣耀手环3</div>
                                <p class="grid-desc">最高直降50元&nbsp; </p>
                                <p class="grid-price">&yen;129</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">特惠</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/874162621.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542769762691mp.png" alt="PORSCHE DESIGN | HUAWEI Smartwatch 华为智能手表 保时捷联合设计（曜石黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为智能手表 保时捷联合设计</div>
                                <p class="grid-desc">低调奢华 天生不凡&nbsp; </p>
                                <p class="grid-price">&yen;4988</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/798789671.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1536216808230mp.png" alt="华为运动手环 标准版（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为运动手环</div>
                                <p class="grid-desc">50米防水游泳&nbsp; </p>
                                <p class="grid-price">&yen;298</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="https://www.vmall.com/product/184868333.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/1488161147740.png" alt="荣耀手表 S1" />
                                    </p>
                                </div>
                                <div class="grid-title">荣耀手表 S1</div>
                                <p class="grid-desc">心率监测 游泳防水&nbsp; </p>
                                <p class="grid-price">&yen;449</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="/product/121088789.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542786877830mp.png" alt="华为手环B3 青春版（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为手环B3 青春版</div>
                                <p class="grid-desc">是手环 也是耳机&nbsp; </p>
                                <p class="grid-price">&yen;499</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="/product/10086175081287.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1543979380286mp.png" alt="华为手环 3e 跑步精灵（曜石黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为手环 3e 跑步精灵</div>
                                <p class="grid-desc">14天持久续航&nbsp; </p>
                                <p class="grid-price">&yen;109</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="https://www.vmall.com/product/369652507.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538991432470mp_1.png" alt="荣耀畅玩手环 A2（魔法黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀畅玩手环 A2</div>
                                <p class="grid-desc">OLED大屏，防尘防水&nbsp; </p>
                                <p class="grid-price">&yen;129</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="/product/495136506.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539763327956mp.png" alt="华为儿童手表迪士尼系列 米奇款（奇幻蓝）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为儿童手表</div>
                                <p class="grid-desc">高清通话，五重定位&nbsp; </p>
                                <p class="grid-price">&yen;688</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="19">
                            <a class="thumb" href="/product/922041175.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542613671009mp.png" alt="HUAWEI VR 2"/>
                                    </p>
                                </div>
                                <div class="grid-title">HUAWEI VR 2</div>
                                <p class="grid-desc">适配HUAWEI P20系列，Mate 10系列&nbsp; </p>
                                <p class="grid-price">&yen;1999</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                    <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                </div>
            </div>
        </div>
    </div>












    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_654712">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">智能家居</h2>
                <ul class="channel-nav fl">
                    <li><a href="/list-45" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','路由器','/list-45')">路由器</a></li>
                    <li><a href="/list-263" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','子母/分布式路由','/list-263')">子母/分布式路由</a></li>
                    <li><a href="/list-44" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','电力猫','/list-44')">电力猫</a></li>
                    <li><a href="/list-97" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','随行wifi','/list-97')">随行wifi</a></li>
                    <li><a href="/list-46" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','电视盒子','/list-46')">电视盒子</a></li>
                    <li><a href="/list-371" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','照明','/list-371')">照明</a></li>
                    <li><a href="/list-421" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','清洁','/list-421')">清洁</a></li>
                    <li><a href="/list-423" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','节能','/list-423')">节能</a></li>
                    <li><a href="/list-373" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','环境','/list-373')">环境</a></li>
                    <li><a href="/list-379" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','安防','/list-379')">安防</a></li>
                    <li><a href="/list-403" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','健康','/list-403')">健康</a></li>
                    <li><a href="/list-377" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','厨电','/list-377')">厨电</a></li>
                    <li><a href="/list-407" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','影音','/list-407')">影音</a></li>
                    <li><a href="/list-375" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','卫浴','/list-375')">卫浴</a></li>
                    <li><a href="/list-381" target="_blank" onclick="pushFoolChildrenMsg('5','智能家居','其他','/list-381')">其他</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-43" target="_blank" onclick="pushFoolMsg('5','智能家居','/list-43')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/10086100906136.html" target="_blank"  onclick="pushFoolAdvertMsg('5','智能家居','picture/j1ognq7qvzdeudc9pp7d.jpg','J1OGNQ7qvZDeUdc9Pp7D.jpg','https://www.vmall.com/product/10086100906136.html')">
                                <img data-lazy-src="picture/j1ognq7qvzdeudc9pp7d.jpg" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[2].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}"   target="_blank" onclick = "pushFoolGoodsMsg(this,4,'5','智能家居','10086477642869','13')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle/${p.firstProductImage.id}.jpg" alt="荣耀YOYO智能音箱（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">${p.name}</div>
                                <p class="grid-desc">智能通话 能听会说&nbsp;</p>
                                <p class="grid-price">${p.promotePrice}</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                </p>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div id="goodsContent4" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/515922308.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539763025755mp.png" alt="华为路由器WS5100（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为路由器WS5100</div>
                                <p class="grid-desc">支持5G信号智能优先选择&nbsp; </p>
                                <p class="grid-price">&yen;159</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="https://www.vmall.com/product/10086958063836.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542765330080mp_1.png" alt="荣耀路由2S（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀路由2S（白色）</div>
                                <p class="grid-desc">限时直降20元&nbsp; </p>
                                <p class="grid-price">&yen;179</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/10086250287882.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/1540624063222.png" alt="华为备咖存储" />
                                    </p>
                                </div>
                                <div class="grid-title">华为备咖存储</div>
                                <p class="grid-desc">1T 大容量&nbsp; </p>
                                <p class="grid-price">&yen;699</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="https://www.vmall.com/product/611513952.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542765947334mp.png" alt="荣耀路由2（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀路由2</div>
                                <p class="grid-desc">有线无线双千兆&nbsp; </p>
                                <p class="grid-price">&yen;179</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/886153777.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542787396488mp.png" alt="华为路由器 A1（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为路由器 A1</div>
                                <p class="grid-desc">千兆网口+千兆WiFi&nbsp; </p>
                                <p class="grid-price">&yen;399</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="https://www.vmall.com/product/3053.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/1482233802925.png" alt="荣耀路由Pro" />
                                    </p>
                                </div>
                                <div class="grid-title">荣耀路由Pro</div>
                                <p class="grid-desc">限时直降40元&nbsp; </p>
                                <p class="grid-price">&yen;288</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="/product/129656917.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539914752799mp.png" alt="华为路由器WS5200（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为路由WS5200</div>
                                <p class="grid-desc">真双频就是快&nbsp; </p>
                                <p class="grid-price">&yen;199</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/10086059855192.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542787881950mp.png" alt="【新品首发】华为4G路由 2（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为4G路由 2（白色）</div>
                                <p class="grid-desc">赠流量卡&nbsp; </p>
                                <p class="grid-price">&yen;389</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="/product/538499714.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539569068557mp.png" alt="华为子母路由器 Q1 （白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为子母路由器 Q1</div>
                                <p class="grid-desc">大户型优选&nbsp; </p>
                                <p class="grid-price">&yen;459</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="19">
                            <a class="thumb" href="/product/10086375378626.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542787490763mp.png" alt="华为 WiFi 放大器 （白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为 WiFi 放大器</div>
                                <p class="grid-desc">新品上市&nbsp; </p>
                                <p class="grid-price">&yen;99</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="20">
                            <a class="thumb" href="https://www.vmall.com/product/23860218.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538985163609mp.png" alt="荣耀路由X1 增强版（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀路由X1 增强版</div>
                                <p class="grid-desc">限时直降20元&nbsp; </p>
                                <p class="grid-price">&yen;129</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="21">
                            <a class="thumb" href="https://www.vmall.com/product/690174055.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538969920769mp.png" alt="荣耀盒子Pro （白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀盒子Pro</div>
                                <p class="grid-desc">限时最高优惠20元&nbsp; </p>
                                <p class="grid-price">&yen;399</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="22">
                            <a class="thumb" href="https://www.vmall.com/product/202235028.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542768241169mp.png" alt="荣耀分布式路由（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀分布式路由</div>
                                <p class="grid-desc">限时最高优惠150元&nbsp; </p>
                                <p class="grid-price">&yen;749</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="23">
                            <a class="thumb" href="https://www.vmall.com/product/3061.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/1482233776849.png" alt="荣耀WiFi穿墙宝" />
                                    </p>
                                </div>
                                <div class="grid-title">荣耀WiFi穿墙宝</div>
                                <p class="grid-desc">插座变热点 信号变满格&nbsp; </p>
                                <p class="grid-price">&yen;255</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                    <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                </div>
            </div>
        </div>
    </div>






    <!--20170222 中通 start-->
    <div class="hr-27"></div>
    <div class="channel-floor index-channel-floor">
        <div class="layout">
            <!-- 2017-02-15-banner-1200*110-start -->
            <div class="home-banner">
                <!-- 2017-02-15-banner-图片轮换-start -->
                <div class="home-banner-slideshow">
                    <!-- 20130903-ad-图片轮换-start -->
                    <div class="banner-slideshow">
                        <div id="web_index_ads_floor5" class="ec-slider">
                            <ul class="ec-slider-list">
                                <li class="ec-slider-item" style="background:;"><div class="ec-slider-item-img"><a href="https://sale.vmall.com/vmallsmarthome.html" onclick="_paq.push([&#39;trackLink&#39;,&#39;首页中间通栏广告第1位&#39;, &#39;link&#39;, &#39;&#39;]);ec.code.addAnalytics({hicloud:true});" target="_blank"><img src="picture/l9amuqg1ooxc9sb9lnd3.jpg" /></a></div></li>
                            </ul>
                        </div>
                        <script>
                            ec.load("ec.slider", {
                                loadType : "lazy",
                                callback : function() {
                                    $("#web_index_ads_floor5").slider({
                                        width: 1200, //　必须
                                        height: 120, //　必须
                                        style : 1, //　1显示分页，2只显示左右箭头,3两者都显示
                                        pause : 5000, 	//间隔时间
                                        auto : true
                                    });
                                }
                            });

                        </script>
                    </div>
                </div><!-- 2017-02-15-banner-图片轮换-end -->
            </div><!-- 2017-02-15-banner-1200*110-end -->
        </div>
    </div>
    <div class="hr-13"></div>
    <!--20170222 中通 end-->






    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_654708">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">热销配件</h2>
                <ul class="channel-nav fl">
                    <li><a href="/list-56" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','移动电源','/list-56')">移动电源</a></li>
                    <li><a href="/list-229" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','耳机','/list-229')">耳机</a></li>
                    <li><a href="/list-58" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','充电器/线材','/list-58')">充电器/线材</a></li>
                    <li><a href="/list-231" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','自拍杆/支架','/list-231')">自拍杆/支架</a></li>
                    <li><a href="/list-55" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','音箱','/list-55')">音箱</a></li>
                    <li><a href="/list-568" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','取卡针','/list-568')">取卡针</a></li>
                    <li><a href="/list-83" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','U盘/存储卡','/list-83')">U盘/存储卡</a></li>
                    <li><a href="/list-235" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','摄像机/镜头','/list-235')">摄像机/镜头</a></li>
                    <li><a href="/list-239" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','智能硬件','/list-239')">智能硬件</a></li>
                    <li><a href="/list-237" target="_blank" onclick="pushFoolChildrenMsg('6','热销配件','生活周边','/list-237')">生活周边</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-54" target="_blank" onclick="pushFoolMsg('6','热销配件','/list-54')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/10086635184440.html" target="_blank"  onclick="pushFoolAdvertMsg('6','热销配件','picture/l7wpgdvkguvuknxryc12.png','L7wPgdVKGUVUKNXryc12.png','https://www.vmall.com/product/10086635184440.html')">
                                <img data-lazy-src="picture/l7wpgdvkguvuknxryc12.png" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[1].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}" target="_blank" onclick = "pushFoolGoodsMsg(this,3,'6','热销配件','10086691766584','13')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle/${p.firstProductImage.id}.jpg" alt="荣耀FlyPods青春版 无线耳机（铃兰白）"/>
                                    </p>
                                </div>
                                <div class="grid-title">${p.name}</div>
                                <p class="grid-desc">购机赢多重好礼&nbsp;</p>
                                <p class="grid-price">￥${p.promotePrice}</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">新品/可享免息</span></em>
                                </p>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div id="goodsContent5" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="https://www.vmall.com/product/194128141.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538985401864mp_1.png" alt="荣耀智能体脂秤（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀智能体脂秤</div>
                                <p class="grid-desc">科学指导减脂&nbsp; </p>
                                <p class="grid-price">&yen;99</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠70元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="/product/602512743.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539762466042mp.png" alt="华为运动心率蓝牙耳机R1 Pro（红色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为运动心率蓝牙耳机R1 Pro</div>
                                <p class="grid-desc">可测心理压力 提供放松训练&nbsp; </p>
                                <p class="grid-price">&yen;699</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="https://www.vmall.com/product/812952235.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539941134837mp.png" alt="荣耀引擎耳机2代（皓月银）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀引擎耳机2代</div>
                                <p class="grid-desc">物理调音黑科技&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠50元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/15662504.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539762251938mp.png" alt="华为车载充电器QuickCharge快充版（Max 18W）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为车载充电器快充版</div>
                                <p class="grid-desc">支持9V2A快充&nbsp; </p>
                                <p class="grid-price">&yen;69</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/794044956.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542768064250mp.png" alt="华为全景相机（灰色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为全景相机</div>
                                <p class="grid-desc">360度无界视野&nbsp; </p>
                                <p class="grid-price">&yen;599</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">爆款</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="https://www.vmall.com/product/10086872833199.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1538991969182mp_1.png" alt="荣耀心晴耳机 心率智能耳机（幻夜黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀心晴耳机</div>
                                <p class="grid-desc">心率智能耳机&nbsp; </p>
                                <p class="grid-price">&yen;99</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠30元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="https://www.vmall.com/product/3281.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542854594365mp.png" alt="荣耀 AM116半入耳式耳机（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀 AM116半入耳式耳机</div>
                                <p class="grid-desc">三键线控/高性价比&nbsp; </p>
                                <p class="grid-price">&yen;49</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠40元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/944393591.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1543030211833mp.png" alt="华为车载充电器SuperCharge快充版（Max 22.5W）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为车载充电器SuperCharge快充</div>
                                <p class="grid-desc">4.5V5A车充&nbsp; </p>
                                <p class="grid-price">&yen;159</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">爆款</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="/product/20999181.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542772477082mp.png" alt="华为三脚架自拍杆 无线版（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为无线三脚架自拍杆</div>
                                <p class="grid-desc">开启自拍新时代&nbsp; </p>
                                <p class="grid-price">&yen;119</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">爆款</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="19">
                            <a class="thumb" href="/product/10086747772894.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542771794773mp.png" alt="华为全景相机酷玩版（星云蓝）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为全景相机酷玩版</div>
                                <p class="grid-desc">360°照片/视频/微博直播&nbsp; </p>
                                <p class="grid-price">&yen;499</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="20">
                            <a class="thumb" href="https://www.vmall.com/product/10086262026261.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542855247819mp.png" alt="荣耀魔声耳机2（深海蓝）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀魔声耳机2（深海蓝）</div>
                                <p class="grid-desc">给您如临现场的音质体验&nbsp; </p>
                                <p class="grid-price">&yen;199</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠50元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="21">
                            <a class="thumb" href="/product/583301172.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1543022317597mp.png" alt="荣耀车载充电器（supercharge 快充版）（含Type C数据线）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀车载充电器（supercharge 快充版）（赠数据线）</div>
                                <p class="grid-desc">赠5A Type C数据线&nbsp; </p>
                                <p class="grid-price">&yen;129</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠30元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="22">
                            <a class="thumb" href="https://www.vmall.com/product/10086029405648.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542856174725mp_1.png" alt="荣耀多口充电器SuperCharge快充版（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀多口充电器SuperCharge快充版</div>
                                <p class="grid-desc">小巧精悍一个顶仨&nbsp; </p>
                                <p class="grid-price">&yen;129</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="23">
                            <a class="thumb" href="https://www.vmall.com/product/2247.html#7659" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542855523115mp.png" alt="荣耀引擎耳机PLUS（香槟金）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀引擎耳机PLUS</div>
                                <p class="grid-desc">好看好听好品质&nbsp; </p>
                                <p class="grid-price">&yen;69</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="24">
                            <a class="thumb" href="/product/10086821090867.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542771573813mp.png" alt="华为补光灯自拍杆（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为补光灯自拍杆</div>
                                <p class="grid-desc">柔光自拍&nbsp; </p>
                                <p class="grid-price">&yen;119</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="25">
                            <a class="thumb" href="https://www.vmall.com/product/200162339.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542764207163mp.png" alt="荣耀音乐小巨蛋（红色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀音乐小巨蛋</div>
                                <p class="grid-desc">便携式蓝牙音箱&nbsp; </p>
                                <p class="grid-price">&yen;179</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="26">
                            <a class="thumb" href="https://www.vmall.com/product/927153142.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542855370113mp.png" alt="荣耀车载充电器  快充版（含Type C数据线）黑色"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀车载充电器 快充版</div>
                                <p class="grid-desc">5A快充4重保护&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="27">
                            <a class="thumb" href="https://www.vmall.com/product/430223039.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542856234581mp.png" alt="荣耀三脚架自拍杆 无线版（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀三脚架自拍杆 无线版</div>
                                <p class="grid-desc">蓝牙遥控 不止自拍&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠30元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="28">
                            <a class="thumb" href="https://www.vmall.com/product/570114585.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1543022906890mp.png" alt="荣耀小天鹅蓝牙音箱（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀小天鹅蓝牙音箱</div>
                                <p class="grid-desc">360°高清环绕音箱/优雅外观&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠30元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="29">
                            <a class="thumb" href="https://www.vmall.com/product/10086441148894.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542856663333mp.png" alt="荣耀月光棒 柔光自拍杆（幻夜黑）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀月光棒 柔光自拍杆</div>
                                <p class="grid-desc">暗光自拍也清晰靓丽&nbsp; </p>
                                <p class="grid-price">&yen;119</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="30">
                            <a class="thumb" href="https://www.vmall.com/product/10086643319817.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1542935118441mp.png" alt="荣耀经典耳机 USB Type-c版（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀经典耳机 USB Type-c版</div>
                                <p class="grid-desc">Type-C接口，降噪升级&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">限时优惠20元</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="31">
                            <a class="thumb" href="/product/10086209688022.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1545787364609mp.jpg" alt="荣耀高清投屏连接线（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀高清投屏连接线</div>
                                <p class="grid-desc">随心投屏/自在分享&nbsp; </p>
                                <p class="grid-price">&yen;199</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="32">
                            <a class="thumb" href="https://www.vmall.com/product/259735704.html#10086829950914" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540007116330mp.png" alt="荣耀移动电源10000mAh快充版 （黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">荣耀移动电源10000mAh快充版</div>
                                <p class="grid-desc">双向快充/锂聚合物电芯&nbsp; </p>
                                <p class="grid-price">&yen;139</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                    <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                </div>
            </div>
        </div>
    </div>












    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <div class="layout" id="lc_654716">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">品牌配件</h2>
                <ul class="channel-nav fl">
                    <li><a href="/list-56" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','移动电源','/list-56')">移动电源</a></li>
                    <li><a href="/list-229" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','耳机','/list-229')">耳机</a></li>
                    <li><a href="/list-58" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','充电器/线材','/list-58')">充电器/线材</a></li>
                    <li><a href="/list-231" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','自拍杆/支架','/list-231')">自拍杆/支架</a></li>
                    <li><a href="/list-55" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','音箱','/list-55')">音箱</a></li>
                    <li><a href="/list-568" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','取卡针','/list-568')">取卡针</a></li>
                    <li><a href="/list-83" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','U盘/存储卡','/list-83')">U盘/存储卡</a></li>
                    <li><a href="/list-235" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','摄像机/镜头','/list-235')">摄像机/镜头</a></li>
                    <li><a href="/list-239" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','智能硬件','/list-239')">智能硬件</a></li>
                    <li><a href="/list-237" target="_blank" onclick="pushFoolChildrenMsg('7','品牌配件','生活周边','/list-237')">生活周边</a></li>
                </ul>
                <div class="channel-more fr"><span></span><span></span><span></span>
                    <a href="/list-54" target="_blank" onclick="pushFoolMsg('7','品牌配件','/list-54')">查看更多</a>
                </div>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items grid-items-lg">
                            <a class="thumb" href="https://www.vmall.com/product/10086322059741.html#10086253732634" target="_blank"  onclick="pushFoolAdvertMsg('7','品牌配件','picture/1xhrk6hqbu1mre8xtc2f.jpg','1xHrK6hQbu1MrE8xtc2f.jpg','https://www.vmall.com/product/10086322059741.html#10086253732634')">
                                <img data-lazy-src="picture/1xhrk6hqbu1mre8xtc2f.jpg" alt="" />
                            </a>
                        </li>
                        <c:forEach items="${cs[0].products}" var="p">
                        <li class="grid-items">
                            <a class="thumb" href="productDetail?pid=${p.id}" target="_blank" onclick = "pushFoolGoodsMsg(this,2,'7','品牌配件','10086790812145','13')">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="img/productSingle_middle/${p.firstProductImage.id}.jpg" alt="华为智选生态产品 豪恩智能家庭套装（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">${p.name}</div>
                                <p class="grid-desc">传感联动智慧管家&nbsp;</p>
                                <p class="grid-price">${p.promotePrice}</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">首发</span></em>
                                </p>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div id="goodsContent6" class="goods-rolling swiper-container relative pdt-12">
                    <ul class="grid-list swiper-wrapper clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="10">
                            <a class="thumb" href="/product/10086701009465.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539940731174mp.png" alt="720空气质量监测仪环境宝3 （白色）（支持HUAWEI HiLink）"/>
                                    </p>
                                </div>
                                <div class="grid-title">720空气质量监测仪环境宝3</div>
                                <p class="grid-desc">保障居家健康&nbsp; </p>
                                <p class="grid-price">&yen;449</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">热卖</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="11">
                            <a class="thumb" href="/product/10086254407717.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540951967494mp.png" alt="华为智选生态产品 三思全彩灯泡（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">华为智选生态产品三思全彩灯泡（白色）</div>
                                <p class="grid-desc">耀.出彩&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="12">
                            <a class="thumb" href="/product/10086412480473.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540367360482mp.png" alt="海备思高清无线投屏器（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">海备思高清无线投屏器</div>
                                <p class="grid-desc">扫码投屏 4K高清&nbsp; </p>
                                <p class="grid-price">&yen;229</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">首发</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="13">
                            <a class="thumb" href="/product/10086132466242.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1541761166239mp.png" alt="科沃斯（Ecovacs）地宝D36F 智能扫地机器人（支持HUAWEI HiLink）"/>
                                    </p>
                                </div>
                                <div class="grid-title">科沃斯地宝D36F 扫地机器人</div>
                                <p class="grid-desc">净彩生活 不止优雅&nbsp; </p>
                                <p class="grid-price">&yen;949</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#FF6A6E">直降</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="14">
                            <a class="thumb" href="/product/10086541811502.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539572631283mp.png" alt="极米无屏电视Z6X 黑色（支持HUAWEI HiLink）"/>
                                    </p>
                                </div>
                                <div class="grid-title">极米无屏电视Z6X</div>
                                <p class="grid-desc">曜黑之作 智成光芒&nbsp; </p>
                                <p class="grid-price">&yen;2999</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="15">
                            <a class="thumb" href="/product/10086072295004.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1526635727042mp.png" alt="Momax 精英3合1编织线（Micro转lightning转USB C-1m）（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">Momax 精英3合1编织线</div>
                                <p class="grid-desc">随时随地 快速切换&nbsp; </p>
                                <p class="grid-price">&yen;98</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="16">
                            <a class="thumb" href="/product/1840.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539746129534mp.png" alt="耐翔 NAENY 手机扩容U盘 安卓版 16GB存储（银色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">耐翔 手机扩容U盘 安卓版</div>
                                <p class="grid-desc">手机轻松扩容，高效传输&nbsp; </p>
                                <p class="grid-price"><span>暂无报价</span></p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="17">
                            <a class="thumb" href="/product/10086386668533.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540951957596mp.png" alt="华为智选生态产品 欧普香薰助眠灯（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">欧普香薰助眠灯（白色）</div>
                                <p class="grid-desc">静谧时光 润色添香&nbsp; </p>
                                <p class="grid-price">&yen;189</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="18">
                            <a class="thumb" href="/product/898148996.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539596396537mp.png" alt="闪迪 SanDisk内存卡ClASS10高速存储TF卡读取速度98MB/秒16G（红灰色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">闪迪高速存储TF卡</div>
                                <p class="grid-desc">海量存储 携带方便&nbsp; </p>
                                <p class="grid-price">&yen;45.90</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="19">
                            <a class="thumb" href="/product/10086547350250.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1541642627139mp.png" alt="Sengled生迪智能LED灯泡 暖光（支持HUAWEI HiLink）"/>
                                    </p>
                                </div>
                                <div class="grid-title">生迪智能LED灯泡 暖光</div>
                                <p class="grid-desc">一款为花粉打造的智能灯泡&nbsp; </p>
                                <p class="grid-price">&yen;39</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="20">
                            <a class="thumb" href="/product/10086254407717.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1540951967494mp.png" alt="华为智选生态产品 三思全彩灯泡（白色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">三思全彩灯泡（白色）</div>
                                <p class="grid-desc">耀.出彩&nbsp; </p>
                                <p class="grid-price">&yen;89</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="21">
                            <a class="thumb" href="/product/10086438110583.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539349622902mp.png" alt="Momax Tripod Pro 6精英三脚架（金色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">Momax 6精英三脚架</div>
                                <p class="grid-desc">手机拍摄最佳拍档&nbsp; </p>
                                <p class="grid-price">&yen;498</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="22">
                            <a class="thumb" href="/product/10086130919562.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539334065645mp.png" alt="BOW 大尺寸三折蓝牙背光键盘HB099B（黑色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">BOW 三折蓝牙背光键盘</div>
                                <p class="grid-desc">多设备通用办公键盘&nbsp; </p>
                                <p class="grid-price">&yen;299</p>
                                <p class="grid-tips">
                                    <em class="thumb"><span class="color01" style="background-color:#68BEFF">首发</span></em>
                                </p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="23">
                            <a class="thumb" href="/product/10086073364193.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1539221202270mp.png" alt="摩飞（Morphyrichards）MR9500便携式榨汁机 （蓝色）"/>
                                    </p>
                                </div>
                                <div class="grid-title">摩飞便携式榨汁机</div>
                                <p class="grid-desc">超便捷的果蔬料理机&nbsp; </p>
                                <p class="grid-price">&yen;328</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <li class="grid-items swiper-slide" id="24">
                            <a class="thumb" href="/product/10086695633756.html" target="_blank">
                                <div class="grid-info">
                                    <p class="grid-img">
                                        <img data-lazy-src="picture/428_428_1543828157377mp.png" alt="Sleepace享睡-享睡纽扣B501 白色（支持HUAWEI HiLink）"/>
                                    </p>
                                </div>
                                <div class="grid-title">享睡 享睡纽扣</div>
                                <p class="grid-desc">DOT享睡纽扣&nbsp; </p>
                                <p class="grid-price">&yen;79</p>
                            </a>
                        </li>
                    </ul>
                    <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                    <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                </div>
            </div>
        </div>
    </div>












    <div class="hr-20"></div>
</div>
<!-- 2017-02-15-HOME GOOGLIST-end -->

<div class="channel-floor index-channel-floor">
    <div class="layout">
        <!-- 20130903-ad-762*132-start --><div class="ad fl"><a target="_blank" href="https://sale.vmall.com/welcome.html"><img src="picture/2018091216573212.jpg" title="新人频道" style="float:none;" /></a></div><!-- 20130903-ad-762*132-end -->
    </div>
    <div class="hr-60"></div>
</div>

<!-- 2017-02-15-top-banner-start -->
<textarea id="top-banner" class="hide">
	<!-- 顶部banner -->
	<div class="top-banner-max hide" id="top-banner-max">
		<div class="top-banner-img">

			<a title="折叠" href="javascript:;" class="button-top-banner-min" id="top-banner-max-toggle">-</a>
		</div>
	</div>
	<div class="top-banner-min hide" id="top-banner-min">
		<div class="top-banner-img">
			<p style="font-size:0;">
			<a style="display:block;position:relative;width:1920px;text-align:center;left:50%;background-color:;margin-left:-960px;" title="荣耀" target="_blank" href="https://sale.vmall.com/honor.html"><img src="picture/ou2d7vohozufw1wbdrkq.jpg" title="荣耀" /></a>
</p>
			<a title="展开" href="javascript:;" class="button-top-banner-max hide" id="top-banner-min-toggle">+</a>
			<a class="button-top-banner-close" href="javascript:;" title="关闭" id="top-banner-min-close">关闭</a>
		</div>
	</div>
    <!-- 顶部banner end -->
</textarea>
<!-- 2017-02-15-top-banner-end -->

<!-- 2017-09-21-bottom-banner-start -->

<!-- 2017-09-21-bottom-banner-end -->

<script>
    // 改为异步调用
    // document.write('<script src="js/servertime.jsp'+ new Date().getTime() +'"></' + 'script>');
</script>
<script>
    ec.load("ajax");
    ec.pkg("ec.index");
    ec.index.clickHref = function (a) {
        window.open(a)
    };
    ec.index.sales = function (e) {};
    ec.index.salesStatus = [];
    ec.index.salesCallBack = function (h, k) {
        var f,
            d = [],
            b = new Date();
        b.setTime(ec.index.now.parseDate("yyyy-MM-dd HH:mm:ss"));
        var a = function (i, o) {
            var n = $(o),
                l = n.attr("data-skutype"),
                m = $(".channel-button", n);
            switch (parseInt(i, 10)) {
                case 0:
                    m.html("\u9a6c\u4e0a\u5f00\u59cb").attr("title", "\u9a6c\u4e0a\u5f00\u59cb");
                    if (l == 3 || l == 4) {
                        m.attr("class", "channel-button-begin")
                    }
                    break;
                case 1:
                    if (l == 3) {
                        m.html("\u53bb\u770b\u770b").attr("title", "\u53bb\u770b\u770b")
                    } else {
                        m.html("\u7acb\u5373\u62a2\u8d2d").attr("title", "\u7acb\u5373\u62a2\u8d2d")
                    }
                    m.attr("class", "channel-button");
                    break;
                case 2:
                    m.html("\u6d3b\u52a8\u7ed3\u675f").attr("title", "\u6d3b\u52a8\u7ed3\u675f");
                    if (l == 2 || l == 3) {
                        m.attr("class", "channel-button-end")
                    }
                    break
            }
        };
        for (var c = 0; c < k.infoList.length; c += 1) {
            f = h[c];
            d = k.infoList[c];
            $(".channel-button", f).css("visibility", "");
            if (!d || !d.id) {
                continue
            }
            if (d.status == 1) {
                if (d.startTime && d.startTime >= b) {
                    d.status = 0
                }
                if (d.endTime && d.endTime <= b) {
                    d.status = 2
                }
            }
            a(d.status, f);
            if (d.startTime || d.endTime || d.limitAmount > 0) {
                $(".p-countdown", f).show()
            }
            if (d.limitAmount > 0) {
                $(".p-quantity", f).html("\u9650<b>" + d.limitAmount + "</b>\u53f0").show()
            }
            var e = parseFloat($(f).attr("data-price"), 10);
            if (d.price > 0) {
                if (parseInt(d.price) == d.price) {
                    $(".p-sale-price span, .p-price span", f).html((d.price));
                    if (parseInt(e) == e) {
                        $(".economize", f).html(e - d.price)
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                } else {
                    $(".p-sale-price span, .p-price span", f).html((d.price).toFixed(2));
                    if (e - d.price == 0) {
                        $(".economize", f).html("0")
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                }
            }
            $(".sale-quantity", f).html(d.saleAmount);
            if (d.status != 2 && (d.startTime || d.endTime)) {
                var g = ($(f).attr("data-block") == "slider") ? true : false,
                    j = [];
                if (d.startTime) {
                    j.push(new Date(d.startTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                if (d.endTime) {
                    j.push(new Date(d.endTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                ec.index.salesStatus[c] = d.status;
                ec.ui.countdown($(".p-time", f), {
                    html : "<b>" + (g ? "" : "\u5269\u4f59") + "</b><ins><i>{#hours}</i><s></s></ins><em>\u65f6</em><ins><i>{#minutes}</i><s></s></ins><em>\u5206</em><ins><i>{#seconds}</i><s></s></ins><em>\u79d2</em>",
                    now : b,
                    times : j,
                    index : c,
                    callback : function (i) {
                        ec.index.salesStatus[i.index]++;
                        a(ec.index.salesStatus[i.index], h[i.index])
                    }
                })
            }
        }
    };
    ec.ready(function () {

        var skuids = $("#recommendSkuIds").val();
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "SKUID":skuids ,
                    "load":"1"
                }
        }
        ec.account.dapPushMsg("300011501",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011501", "link", value]);
        //首页加载上报
        ec.account.dapPushMsg('','','view');
        //_paq.push(['setTrackerUrl', openApiDomain + '/dap/report']);
        //_paq.push([ "trackPageView" ]);

        if (ec.account.isLogin()) {
            $("#cust_login_info").hide()
        }
        var a = ec.index.bigAd,
            g = ec.index.smallAd,
            f = ec.index.bigadShowTime,
            e,
            b,
            c = function () {
                var j = b.innerHeight();
                var i = e.innerHeight();
                var k = $("#search-bar-form").offset().top - i + j;
                var h = $("#search-bar-form").innerHeight();
                $(".autocomplete-w1").parent().hide();
                e.slideUp(1000, function () {
                    if (g) {
                        b.show()
                    }
                    $(".autocomplete-w1").parent().css({
                        top : (k + h + "px")
                    });
                    $(".autocomplete-w1").parent().show();
                    ec.index.SCROLL_GET = ec.index.getscrollLayout()
                });
                if (d) {
                    clearTimeout(d)
                }
            },
            d;
        $("#top-banner-block").html(gid("top-banner").value);
        e = $("#top-banner-max");
        b = $("#top-banner-min");
        $("#top-banner-min-close").click(function () {
            $("#top-banner-block").hide();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        });
        if (a) {
            e.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout();
            $("#top-banner-max-toggle").click(c);
            d = setTimeout(c, f)
        }
        if (g && !a) {
            b.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        if (!g && !a) {
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        $("body .layout .channel-pro-item").hover(function () {
            $(this).addClass("pro-info-hover")
        }, function () {
            $(this).removeClass("pro-info-hover")
        });
        ec.index.sales("#main-sale-list .activity-list, #slider-sale-list .activity-list");
        ec.index.floatLayout()
    });
    ec.index.SCROLL_GET = {};
    ec.index.getscrollLayout = function () {
        var b = $(".home-channel-container .layout .channel-title").closest('.layout'),
            d = $(".event-float-layout"),
            a = [],
            c = [];
        if (b.length == 0 || d.length == 0) {
            return false
        }
        b.each(function (e, f) {
            c.push($(this).offset().top);
            a.push($(this).outerHeight())
        });
        return {
            scrollListHeight : a,
            scrollList : c,
            top : d.offset().top
        }
    };
    ec.index.floatLayout = function () {
        var a = $(".event-float-layout");
        if (a.length == 0 || ec.index.SCROLL_GET === false) {
            return false
        }
        $("body").css({
            "min-width" : "1200px",
            "overflow-x" : "hidden"
        });
        var d = $(".event-float"),
            n = $(".hungBar-top"),
            h = $(".home-channel-container .layout .channel-title").closest('.layout'),
            p = $(".home-channel-container"),
            m = $(".home-channel-container .layout .channel-title"),
            l = "";
        a.find("ul").children().remove();
        function f(i) {
            return $("<span/>").text(i).html()
        }
        h.each(function (i, q) {
            var name = f(m.eq(i).text());
            l += '<li><a data-id="' + i + '" href="javascript:;" onclick = "pushMsg(\''+name+'\');">' + name + "</a></li>"
        });
        a.find("ul").append(l);
        a.bind("click", function (r) {
            var q = $(r.target);
            if (q[0].nodeName.toLowerCase() === "a") {
                var i = parseInt(q.attr("data-id"));
                q.parent().addClass("hover").siblings().removeClass("hover");
                $("html,body").animate({
                    scrollTop : ec.index.SCROLL_GET.scrollList[i] + "px"
                }, 400)
            }
        });
        var o = a.outerHeight(),
            e = d.offset(),
            c = e.left,
            b = $(window).height(),
            k = b / 2 - (o / 2),
            j = h.length,
            g = true;
        a.css({
            height : j * 47 + "px",
            top : k + "px"
        });
        if (document.body.clientWidth <= 1400) {
            a.hide();
            g = false
        }
        if ($.browser.msie && parseInt($.browser.version) <= 9) {
            a.hide()
        }
        if ($.browser.msie && parseInt($.browser.version) <= 7) {
            g = false
        } else {
            $(window).scroll(function () {
                if (!g) {
                    return
                }
                var i = $(window).scrollTop();
                if (i >= b) {
                    n.fadeIn(80)
                } else {
                    n.fadeOut(80)
                }
                if (i >= ec.index.SCROLL_GET.scrollList[0] - k) {
                    a.css({
                        top : k + "px"
                    }).addClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.show()
                    }
                    $.each(ec.index.SCROLL_GET.scrollList, function (q, r) {
                        if (i >= r - ec.index.SCROLL_GET.scrollListHeight[q] / 2) {
                            a.find("li").eq(q).addClass("hover").siblings().removeClass("hover")
                        }
                    });
                    if (i >= (ec.index.SCROLL_GET.scrollList[j - 1] + 200)) {
                        a.removeClass("tool-Fixed");
                        if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                            a.hide()
                        }
                    }
                } else {
                    a.removeClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.hide()
                    }
                }
            }, 200)
        }
        $(window).resize(function () {
            if (document.body.clientWidth > 1400) {
                a.show();
                g = true;
                return
            }
            a.hide();
            g = false;
            $("body").css({
                "min-width" : "1200px",
                "overflow-x" : "auto"
            })
        }, 200);
        if ($(window).scrollTop() > 0) {
            $(window).trigger("scroll")
        }
    };
    $(document).ready(function () {
        function initSwiper(xpath, num) {
            var jobj = $(xpath);
            var liNum =  jobj.find('.swiper-slide').length;
            if (liNum > num) {
                jobj.find('.swiper-button-next').removeClass('disabled');
            } else {
                jobj.find('.swiper-button-prev').addClass('disabled');
                jobj.find('.swiper-button-next').addClass('disabled');
            }
            var mySwiper = new Swiper(xpath, {
                slidesPerView: num,
                slidesPerGroup: num
            });
            jobj.find('.btn-prev').click(function() {
                mySwiper.swipePrev();
            });
            jobj.find('.btn-next').click(function() {
                mySwiper.swipeNext();
            });
        }
        $('.goods-rolling').each(function() {
            var xpathId = $(this).attr('id');
            if (xpathId.startWith('goodsContent')) {
                initSwiper('#'+xpathId, 6);
            } else {
                initSwiper('#'+xpathId, 5);
            }
        });

        new Slider({
            objid : "#notice",
            listname : ".p-notice-list",
            shownum : 1,
            type : 2,
            autoplay : true
        }).init();
        var b = $(".bottomImage");
        if (b.attr("src")) {
            b.show().bind("click", function () {
                var f = $("#adsArearLink").val();
                if (f != null && f.trim() != "") {
                    var g = window.open(f, "_blank");
                    g.opener = null
                }
            })
        }
        var e = $(".grid-list .grid-items,.grid-promo-list .grid-items");
        e.hover(function () {
            $(this).addClass("current")
        }, function () {
            $(this).removeClass("current")
        });
    })


</script>
<script>
    "use strict";var Slider=function(a){this.i=0;this.objid=a.objid||null;this.preclassname=a.preclassname||".btn-prev";this.nextclassname=a.nextclassname||".btn-next";this.listname=a.listname||".grid-list";this.listitem=a.listitem||"li";this.shownum=a.shownum||5.5;this.type=a.type||1;this.autoplay=a.autoplay||false};Slider.prototype={init:function(){var b=this;var a=b.set();if(b.autoplay){b.auto(a)}else{b.next(a);b.pre(a)}},auto:function(e){var d=this,c=null;$(d.listname).find(d.listitem).eq(0).clone().appendTo(d.listname);e.len+=1;var b=(e.itemHeight)*(e.len-1),a=function(){d.i++;if(Math.abs(parseInt(e.$grid.css("margin-top")))==b){e.$grid.css("margin-top",0);d.i=1}e.$grid.animate({"margin-top":"-"+(d.i*e.itemHeight*d.shownum)+"px"},500)};if(d.autoplay){c=setInterval(a,2000);e.$grid.hover(function(){clearInterval(c)},function(){c=setInterval(a,2000)})}},set:function(){var d=this,g=$(d.objid+" "+d.listitem),i=$(d.objid+" "+d.listname),h=$(d.objid+" "+d.preclassname),b=$(d.objid+" "+d.nextclassname),e=g.length,f=g.outerWidth(),a=g.outerHeight(),c=Math.ceil(e/d.shownum);switch(d.type){default:case 1:i.css("width",(f+1)*e+"px");break;case 2:i.css("height",(a)*e+"px");break}return{$item:g,$grid:i,$pre:h,$next:b,len:e,itemWidth:f,itemHeight:a,num:c}},pre:function(b){var a=this;b.$pre.bind("click",function(){if($(this).hasClass("disabled")){return}a.i--;if(a.i-1<0){b.$pre.addClass("disabled")}b.$next.removeClass("disabled");switch(a.type){default:case 1:b.$grid.animate({"margin-left":a.i==0?0:parseInt(b.$grid.css("margin-left"))+(b.itemWidth*a.shownum)+"px"},500);break;case 2:b.$grid.animate({"margin-top":a.i==0?0:parseInt(b.$grid.css("margin-top"))+(b.itemHeight*a.shownum)+"px"},500)}})},next:function(b){var a=this;b.$next.bind("click",function(){if($(this).hasClass("disabled")){return}a.i++;b.$pre.removeClass("disabled");switch(a.type){default:case 1:if(a.shownum>1){if(a.i+1==b.num){var d=parseInt(b.$grid.css("margin-left"));var c=(b.len-((a.i)*parseInt(a.shownum))-1/2)*b.itemWidth;b.$grid.animate({"margin-left":d-c+"px"},500)}else{b.$grid.animate({"margin-left":"-"+(a.i*b.itemWidth*parseInt(a.shownum))+"px"},500)}}else{b.$grid.animate({"margin-left":"-"+(a.i*b.itemWidth*a.shownum)+"px"},500)}break;case 2:b.$grid.animate({"margin-top":"-"+(a.i*b.itemHeight*a.shownum)+"px"},500);break}if(a.i+1==b.num){b.$next.addClass("disabled")}})}};
</script>
<script>
    (function (_ec) {
//顶部banner
        _ec.bigAd = false;
        _ec.smallAd = true;
        _ec.bigadShowTime = 8000;
        _ec.now = new Date().format('yyyy-MM-dd HH:mm:ss');

        _ec.configNowTime = function(){
            if(_serverTime)
            {
                _ec.now = new Date(_serverTime).format('yyyy-MM-dd HH:mm:ss');
            }
        }

        //ec.load({
        //	url : "js/servertime.jsp"+(new Date()).getTime(),
        //	type : "js",
        //	loadType:"lazy",
        //	onload : _ec.configNowTime
        //});

    })(ec.index);


    /*
 *
 * 首页左浮动位置
 *
 * */
    (function($){
        function floatShow(){
            function getScrollTop(){
                var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
                return scrollTop;
            }
            if(getScrollTop()>1080){
                if( $(".leftfloat")){
                    $(".leftfloat").addClass('leftfloat-show');
                }
            }else{
                if( $(".leftfloat")){
                    $(".leftfloat").removeClass('leftfloat-show');
                }
            }
        };
        floatShow();



        window.onscroll=function(){
            floatShow();
        };
        function floatPosition() {
            if( $(".leftfloat")){
                var floatLeft =($(window).width()-1200)/2-$('.leftfloat').width()-10,
                    floatTop =$(window).height()/2 - $('.leftfloat').height()/2;
                $(".leftfloat").css('left',floatLeft);
                $(".leftfloat").css('top',floatTop);
                setTimeout(floatPosition,100);
            }
        };
        floatPosition();
        window.onresize=function(){
            floatPosition();
        };
        /*
     *
     * 首页底部浮动位置
     *
     * */
        var $top = $('.home-channel-container .layout').eq(0).offset().top,
            $height = $('.bottom-banner').height();
        $(window).scroll(function (){
            var bottomV = $height*(-1);
            $(".bottom-banner").css("bottom",bottomV+"px");
            var scrollTop = $(window).scrollTop();
            if(scrollTop>=($top-$height)){
                $(".footer-container").css("padding-bottom",$height+"px");
                $(".bottom-banner").addClass('bm-0');
            }else{
                $(".bottom-banner").removeClass('bm-0');
                $(".footer-container").css("padding-bottom","0");
            }
        })

    })(jQuery);

    //会员频道点击上报
    function pushMemberMsg(name,url)
    {
        if(url.indexOf("privilege")!=-1 || url.indexOf("welcome.html")!=-1){
        }else if(name.indexOf("注册")!=-1){
        }else{
            ec.account.afterLogin(function(){});
        }
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010801",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010801", "link", value]);
    }

    //中通广告数据上报
    function pushBannerMsg(adid,url)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":adid,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011601",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011601", "link", value]);

    }

    $(".home-banner-slideshow").find("li").find("a").click(function(){
        var adid = $(this).find("img").attr("src");
        var url = $(this).attr("href");
        pushBannerMsg(adid,url);
    });
    //商品楼层更多点击上报
    function pushFoolMsg(index,category,url){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "index":index ,
                    "category":category,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011703",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011703", "link", value]);
    }
    //商品楼层商品楼层子分类点击上报
    function pushFoolChildrenMsg(index,category,subCategory,url){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "index":index ,
                    "category":category,
                    "subCategory":subCategory,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011701",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011701", "link", value]);
    }

    //底部通栏广告数据上报
    $(".ad.fl").find("a").click(function(){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":$(this).find("img").attr("src") ,
                    "URL":$(this).attr("href"),
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011801",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011801", "link", value]);
    });

    //楼层广告数据上报
    function pushFoolAdvertMsg(index,category,adid,url)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "index":index,
                    "category":category,
                    "ADID":adid,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011702",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011702", "link", value]);
    }

    //右浮动导航数据上报
    $(".hover-list").find("li").find("a").click(function(){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "buttonName":$(this).html(),
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010001",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010001", "link", value]);
    });

    //首页弹窗数据上报
    $("#web_popup_ads").find("a").click(function(){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":$(this).find("img").attr("src"),
                    "URL":$(this).attr("href"),
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010002",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010002", "link", value]);
    });

    //楼层商品点击上报
    function pushFoolGoodsMsg(obj,location,index,category,skuId,type)
    {
        var row;
        var column;
        if(type == "13")
        {
            var num = (location)/4;
            row = parseInt(num)+1;
            if(row == 1 )
            {
                column = location+1;
            }
            else
            {
                column = parseInt((location)%4)+1;
            }
        }
        else if(type == "12")
        {
            row = parseInt((location-1)/4)+1;
            column = parseInt((location-1)%4)+1;
        }


        var url = obj.href;
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "index":index ,
                    "category":category,
                    "SKUID":skuId,
                    "URL" : url,
                    "row":""+row,
                    "column ":""+column,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011704",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011704", "link", value]);
    }

    /*	$(".bottom-banner").find("a").click(function(){
		var url = $(this).attr("href");
		var src = $(this).find("img").attr("src");
		var value = {
			"UID":ec.util.cookie.get("uid"),
			"TID":getPtid(),
			"TIME":getTime(),
			"CONTENT":
			{
			"ADID":src,
  			"URL":url,
  			"type":"1",
   			"click":"1"
   			}
		};
		ec.account.dapPushMsg("300010102",value,"click");
		ec.code.addAnalytics({hicloud:true});
		_paq.push(["trackLink","300010102", "link", value]);
	});
*/
    $(".top-banner-min").find("a").live("click",function(){
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if($(this).attr("class")=="undefined"||$(this).attr("class")==""||$(this).attr("class")==null)
        {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else
        {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":src,
                    "URL":url,
                    "type":type,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010102",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010102", "link", value]);
    });

    $(".top-banner-max").find("a").live("click",function(){
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if($(this).attr("class")=="undefined"||$(this).attr("class")==""||$(this).attr("class")==null)
        {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else
        {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":src,
                    "URL":url,
                    "type":type,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300010101",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010101", "link", value]);
    });

    function pushMsg(name) {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "buttonName":name,
                    "click":"1"
                }

        };
        ec.account.dapPushMsg("300010001",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300010001", "link", value]);
    };

    function pushMsgMenu1(location,key,name,url){
        ec.account.afterLogin(function(){window.location.href="https://www.vmall.com/priority";});
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name ,
                    "URL":url,
                    "location":location,
                    "click":"1"
                }

        };
        ec.account.dapPushMsg(key,value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink",key, "link", value]);
    };
    function pushMsgMenu(location,key,name,url){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name ,
                    "URL":url,
                    "location":location,
                    "click":"1"
                }

        };
        ec.account.dapPushMsg(key,value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink",key, "link", value]);
    };

    function pushMsgNotice(location){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "location":location,
                    "click":"1"
                }

        };
        ec.account.dapPushMsg("300011001",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011001", "link", value]);
    };

    $('.home-promo-list.clearfix li a').click(function(){
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "ADID":$(this).parent().find('img').attr("src"),
                    "URL":$(this).attr('href'),
                    "locaion":$(this).parent().index()+1,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300011201",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300011201", "link", value]);
    });
</script>
<!--口号-20121025 -->
<div class="slogan-container">
    <div class="slogan">
        <ul>
            <li class="s1"><a target="_blank" href="https://www.vmall.com/help/faq-934.html"  rel="nofollow" onclick = "pushFootAdvertMsg('公司介绍','https://www.vmall.com/help/faq-934.html')"><i></i>百强企业&nbsp;品质保证</a></li>
            <li class="s2"><a target="_blank" href="https://www.vmall.com/help/faq-834.html"  rel="nofollow" onclick = "pushFootAdvertMsg('退换货政策','https://www.vmall.com/help/faq-834.html')"><i></i>7天退货&nbsp;15天换货</a></li>
            <li class="s3">
                <a target="_blank" href="https://www.vmall.com/help/faq-4367.html"  rel="nofollow" onclick = "pushFootAdvertMsg('物流帮助','https://www.vmall.com/help/faq-4367.html')"><i></i>
                    <span>48元起免运费</span>
                </a>
            </li>
            <li class="s4"><a target="_blank" href="http://consumer.huawei.com/cn/support/service-center/index.htm"  rel="nofollow" onclick = "pushFootAdvertMsg('服务中心','http://consumer.huawei.com/cn/support/service-center/index.htm')"><i></i>1000家维修网点&nbsp;全国联保</a></li>
        </ul>
    </div>
</div><!--口号-end -->

<!-- 2017-02-15-服务-start -->
<div class="service-container">
    <div class="service">
        <div class="service-l fl">
            <dl class="s1">
                <dt>
                <p class="title">购物相关</p>
                </dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4355.html"  rel="nofollow">购物指南</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4367.html"  rel="nofollow">配送方式</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4357.html"  rel="nofollow">支付方式</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/category-16.html"  rel="nofollow">常见问题</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s2">
                <dt>
                <p class="title">保修与退换货</p>
                </dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-833.html"  rel="nofollow">保修政策</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-834.html"  rel="nofollow">退换货政策</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-5259.html"  rel="nofollow">退换货流程</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/warranty-query/index.htm"  rel="nofollow">保修状态查询</a></li>
                        <li><a target="_blank" href="http://c-ver.huawei.com/web/"  rel="nofollow">配件防伪查询</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s3">
                <dt>
                <p class="title">维修与技术支持</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/service-center/index.htm"  rel="nofollow">售后网点</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/reservation/index.htm"  rel="nofollow">预约维修</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/express-repair/index.htm"  rel="nofollow">手机寄修</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/sparepart-price/index.htm"  rel="nofollow">备件价格查询</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/door-to-door-service/"  rel="nofollow">上门服务</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s4">
                <dt>
                <p class="title">特色服务</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://consumer.huawei.com/cn/support/distinguish/"  rel="nofollow">防伪查询</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/order/tcsProductIndex"  rel="nofollow">补购保障</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/recycle"  rel="nofollow">以旧换新</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/product/10086344499475.html#10086230774569"  rel="nofollow">礼品包装</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s5">
                <dt>
                <p class="title">关于我们</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://www.huawei.com/cn/about-huawei/corporate-information"  rel="nofollow">公司介绍</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-939.html"  rel="nofollow">华为商城简介</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/offshop/hwshoplist"  rel="nofollow">华为线下门店</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/offshop/shoplist"  rel="nofollow">荣耀线下门店</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/job"  rel="nofollow">诚征英才</a></li>
                        <li><a href="javascript:;" title="意见反馈" onclick="ec.survery.open();pushRightHelpMsg('意见反馈')">意见反馈</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s6" id="serverlink">
                <dt class="relative">
                <p class="title">友情链接</p>
                <p class="button"><span class="btn btn-prev disabled"> < </span><span class="btn btn-next"> > </span></p>
                </dt>
                <dd class="">
                    <div class="service-list clearfix"><ol><li><a onclick="jump_link(&#39;http://www.huawei.com/cn/&#39;)">华为集团</a></li><li><a href="https://consumer.huawei.com/cn/" target="_blank" textvalue="华为CBG官网">华为CBG官网</a></li><li><a onclick="jump_link(&#39;http://www.honor.cn/&#39;)">荣耀官网</a></li><li><a onclick="jump_link(&#39;http://club.huawei.com/&#39;)" textvalue="花粉俱乐部">花粉俱乐部</a></li><li><a href="https://www.vmall.com/shopdc/sitemap.html" target="_blank">网站地图</a><br /></li></ol><ol><li><a onclick="jump_link(&#39;http://www.hwtrip.com/&#39;)">爱旅官网</a></li><li><a onclick="jump_link(&#39;http://app.hicloud.com/&#39;)">华为应用市场</a></li><li><a onclick="jump_link(&#39;http://www.wbiao.cn/&#39;)">万表网</a></li><li><a onclick="jump_link(&#39;http://www.askci.com/&#39;)">中商情报网</a></li><li><a onclick="jump_link(&#39;http://www.shuame.com/&#39;)">刷机精灵</a></li></ol><ol><li><a onclick="jump_link(&#39;https://www.vmall.com&#39;)" textvalue="华为手机">华为手机</a></li><li><a onclick="jump_link(&#39;http://www.17ugo.com/&#39;)">优购物官网</a></li><li><a onclick="jump_link(&#39;http://www.znds.com/&#39;)">智能电视</a></li><li> <a onclick="jump_link(&#39;http://www.uc.cn/&#39;)">UC浏览器</a></li><li><a onclick="jump_link(&#39;http://www.zol.com/&#39;)">中关村商城</a></li></ol><ol><li><a onclick="jump_link(&#39;http://www.kugou.com/&#39;)">酷狗音乐</a></li><li><a onclick="jump_link(&#39;http://www.958shop.com/&#39;)">百信手机网</a></li><li><a onclick="jump_link(&#39;http://www.cardbaobao.com/&#39;)">卡宝宝网</a></li><li><a onclick="jump_link(&#39;http://www.duote.com/&#39;)" textvalue="多特软件下载">多特软件下载</a></li></ol><ol><li><a onclick="jump_link(&#39;http://www.tongbu.com/&#39;)">同步助手</a></li><li><a onclick="jump_link(&#39;http://www.fengniao.com/&#39;)">蜂鸟摄影网</a></li><li><a onclick="jump_link(&#39;http://www.7po.com/&#39;)">奇珀论坛</a></li><li><a onclick="jump_link(&#39;http://www.homekoo.com/&#39;)">家具商城</a></li><li><a onclick="jump_link(&#39;http://www.paixie.net/&#39;)">拍鞋网商城</a></li></ol><ol><li><a onclick="jump_link(&#39;http://www.obolee.com/&#39;)">欧宝丽珠宝</a></li><li><a onclick="jump_link(&#39;http://www.xungou.com/&#39;)">寻购网</a></li><li><a onclick="jump_link(&#39;http://www.yzmg.com/&#39;)">亿智蘑菇</a></li><li><a onclick="jump_link(&#39;http://www.wandoujia.com/&#39;)">安卓市场</a></li><li><a onclick="jump_link(&#39;http://baike.1688.com/&#39;)">阿里巴巴生意经</a></li></ol><ol><li><a onclick="jump_link(&#39;http://product.cnmo.com/&#39;)">手机大全</a></li><li><a onclick="jump_link(&#39;http://www.anzow.com/&#39;)">安卓软件园</a></li><li><a onclick="jump_link(&#39;http://www.wpxap.com/&#39;)">智机论坛</a></li><li><a onclick="jump_link(&#39;http://www.eepw.com.cn/&#39;)">电子产品世界</a></li></ol><ol><li><a onclick="jump_link(&#39;http://www.liqucn.com/&#39;)">历趣网</a></li><li><a onclick="jump_link(&#39;http://www.51bi.com/&#39;)">网购返利</a></li><li><a title="Apple110" onclick="jump_link(&#39;http://www.apple110.com/&#39;)">Apple110</a></li><li><a onclick="jump_link(&#39;http://www.91.com/&#39;)" textvalue="91手机门户网">91手机门户网</a></li><li><a onclick="jump_link(&#39;http://www.ydss.cn/&#39;)">移动叔叔</a></li></ol><ol><li><a onclick="jump_link(&#39;http://www.outlets365.com/&#39;)">奥特莱斯</a></li><li><a onclick="jump_link(&#39;https://www.vmall.com&#39;)">荣耀Magic</a></li><li><a onclick="jump_link(&#39;http://car.ctrip.com/&#39;)">携程租车</a></li></ol></div><script>
                    jump_link = function(url)
                    {
                        var win = window.open(url,"_blank") ;
                        win.opener = null ;
                    };
                    if((typeof  ec.product.productshopName) != 'undefined'){



                        ec.product.getFeature = function(skuId) {
                            //后台已经带过来的skudetail 则不再调接口获取
                            if(ec.product.getSkuForFeature(skuId) != undefined || $("#pro-detail-content-"+skuId).length > 0){
                                $("#pro-tab-parameter").removeClass("selected");
                                $("#pro-tab-feature").addClass("selected").show();
                                $("#pro-detail-contents").show();
                                $('#pro-detail-content-' + (ec.product.setSkuId || skuId)).show().siblings().hide();
                                //处理视频播放
                                if(playerDetailVideo){
                                    playerDetailVideo.dispose();
                                }
//       $("#video-box").remove();
                                ec.product.payVideo();
                                return ;
                            }
                            // 请求商品详情
                            new ec.ajax().get({
                                url : "/product/querySkuDetailFeature/"+ec.product.getSku()+".json",
                                /*data : {
             skuId : ec.product.getSku()
        },*/
                                timeout : 10000,
                                timeoutFunction : function() {
                                    $("#pro-detail-contents > div:first-child").html("正在加载...");
                                },
                                successFunction : function(json) {
                                    if (!json.success) {
                                        $("#pro-tab-feature").removeClass("selected").hide();
                                        $("#pro-tab-parameter").addClass("selected");
                                        $("#pro-detail-contents").hide();
                                        return;
                                    }
                                    if(json.length==0){
                                        $("#pro-tab-feature").removeClass("selected").hide();
                                        $("#pro-tab-parameter").addClass("selected");
                                        $("#pro-tab-feature").hide();
                                        $("#pro-detail-contents").hide();
                                        return;
                                    }
                                    $("#pro-tab-parameter").removeClass("selected");
                                    $("#pro-tab-feature").addClass("selected");
                                    $("#pro-tab-feature").show();
                                    $("#pro-detail-contents").show();
                                    ec.product.setSkuForFeature(skuId);
                                    var content = [];
                                    content.push('<div id="pro-detail-content-' + json.id + '" class="pro-detail-see">');

                                    content.push('<div id="kindPicture-'+json.id+'">');
                                    content.push(json.detail);
                                    content.push('</div>');

                                    content.push('<div id="detail-content-button-'+json.id +'" class="product-shade hide"><p>');
                                    content.push('<a id="pro-detail-down-btn-'+json.id+'" class="product-detail-btn">');
                                    content.push('查看全部产品详情</a></p></div>');
                                    content.push('<a href="javascript:;" id="pro-detail-up-btn-'+json.id+'" class="product-detail-btnup hide">收起全部产品详情</a>');
                                    content.push('</div>');
                                    var feature = $("#pro-tab-feature-content > div:first-child");
                                    feature.prepend(content.join(''));


                                    //<video id="player-container-id" preload="auto" width="1920" height="1080" playsinline webkit-playinline x5-playinline src=""></video>//处理视频播放
                                    if(playerDetailVideo){
                                        setTimeout(function(){
                                            playerDetailVideo.dispose();
                                        },300)
                                    }
//          $("#video-box").remove();
                                    ec.product.payVideo();

                                    $('#pro-detail-content-' + (ec.product.setSkuId || skuId)).show().siblings().hide();
                                    var imgHeight = 0;
                                    $('#pro-detail-content-' + (ec.product.setSkuId || skuId)+' img').each(function(index){
                                        $(this).load(function(){
                                            imgHeight = imgHeight +$(this).height();
                                            if(imgHeight>=2000){
                                                $('#pro-detail-content-'+json.id).height('2000');
                                                $('#detail-content-button-'+json.id).show();
                                                $("#pro-detail-down-btn-"+json.id).click(function(){
                                                    $('#pro-detail-content-'+json.id).height($('#kindPicture-' + json.id).height()+$('#pro-detail-up-btn-'+json.id).height()+40);
                                                    $('#detail-content-button-'+json.id).hide();
                                                    $("#pro-detail-up-btn-"+json.id).css("display","block");
                                                    upDownButton = "true";
                                                });

                                                $("#pro-detail-up-btn-"+json.id).click(function(){
                                                    $('#pro-detail-content-'+json.id).height('2000');
                                                    $('#detail-content-button-'+json.id).show();
                                                    $("#pro-detail-up-btn-"+json.id).css("display","none");
                                                    upDownButton = "false";
                                                    $("body,html").animate({
                                                        scrollTop : tit1+1575
                                                    }, 0);
                                                });
                                                return false
                                            }
                                        });
                                    });
                                    if(imgHeight<2000){
                                        $('#detail-content-button-'+json.id).hide();
                                    }
                                },
                                errorFunction : function() {
                                    $("#pro-tab-feature").removeClass("selected").hide();
                                    $("#pro-tab-parameter").addClass("selected");
                                    $("#pro-detail-contents").hide();
                                },
                                timeoutFunction : function() {
                                    $("#pro-tab-feature").removeClass("selected").hide();
                                    $("#pro-tab-parameter").addClass("selected");
                                    $("#pro-detail-contents").hide();
                                }
                            });

                        };
//视频播放器实例
                        var playerDetailVideo;
                        ec.product.payVideo = function() {
//	$("#video-box").remove();
                            var skuId = ec.product.getSku();
                            //处理视频播放
                            var video = $("#pro-detail-content-" + skuId).find(".J_videoTrigger");
                            $("#player-container-id").remove();
                            if (video) {
                                //video标签是否存在
                                if(!$("#pro-detail-content-" + skuId).find("video") || $("#pro-detail-content-" + skuId).find("video").length == 0){
                                    var videoUrl = video.attr("data-video");
                                    var videoPic = video.attr("data-video-poster");
                                    if (videoUrl && videoUrl !="") {
                                        video.append("<span class='video-btn'></span>");
                                        var playerContainerId = "player-container-id-"+skuId;
                                        //video.prepend('<video id="' + playerContainerId + '" preload="auto" width="'+ width +'" height="' + height + '" playsinline webkit-playinline x5-playinline src="'+ videoUrl +'"></video>');


                                        video.click(function(){
                                            videoUrl = $(this).attr("data-video");
                                            var videoHtml = '<video id="' + playerContainerId + '" preload="auto"  playsinline webkit-playinline x5-playinline src="'+ videoUrl +'"></video>';
                                            var videoBox = new ec.box(videoHtml,{
                                                boxid:"video-box",
                                                boxclass:'ol_box_4 video-detail',
                                                width:800,
                                                height:450,
                                                draggable:false,
                                                showButton: false,
                                                zIndex:700,
                                                onclose:function(dom){
                                                    playerDetailVideo.dispose();
//	                    	$("#video-box").remove();
                                                }
                                            }).open();
                                            playerDetailVideo = TCPlayer(playerContainerId, {
                                                autoplay: true
                                            });
                                        });
                                    }
                                }
                            }
                        }
                    };
                </script><script type="text/javascript">
                    jump_link = function(url)
                    {
                        var win = window.open(url,"_blank") ;
                        win.opener = null ;
                    }
                    $(document).ready(function(){
// 在这里写你的代码...
                        var easebuyurl = window.location.href;
                        if (easebuyurl.indexOf("easebuy") > 0) {
                            ec.code.addService({showService : true , showTools : true , live800Url4Web : "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af"});
                            $("#tools-nav-service-robotim-button").attr("href" , "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall商城电脑端&enterurl="+encodeURIComponent(window.location.href)+"&k=1&remark=").css("display", "block");
                        }
                    });
                </script>
                </dd>
            </dl>
        </div>
        <div class="service-r fl">
            <dl class="s7">
                <dt>
                <p class="title">400-088-6888</p></dt>
                <dd>
                    <ol>
                        <li><a>7x24小时客服热线（仅收市话费）</a></li>
                    </ol>
                </dd>
                <dd>
                    <a id="tools-nav-service-robotim-button" rel="nofollow" class="service-btn btn-line-primary" href="javascript:;" target="_blank"><i class=""></i> 在线客服</a>
                </dd>
            </dl>
            <div class="service-code clearfix">
                <h2>关注Vmall：</h2>
                <ul class="clearfix">
                    <li class="service-code-wechat"><div class="service-code-img"><img src="picture/20181116180507506.jpg"></div></li>
                    <li class="service-code-toutiao">
                        <a target="_blank" href="https://www.toutiao.com/c/user/52373534151/#mid=52586950033" rel="nofollow" style="display:block; width:20px; height:20px;" ></a></li>
                    <li class="service-code-sina"><a target="_blank" href="https://weibo.com/shophuawei"  rel="nofollow" style="display:block; width:20px; height:20px;" ></a></li>
                    <li class="service-code-vmall"><a target="_blank" href="https://club.huawei.com/"  rel="nofollow" style="display:block; width:20px; height:20px;" ></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 2017-02-15-服务-end -->

<!--确认对话框-->
<div id="ec_ui_confirm" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_confirm_msg"></p>
        <div class="popup-button-area"><a id="ec_ui_confirm_yes" href="javascript:;" class="button-action-yes"><span>是</span></a><a id="ec_ui_confirm_no" href="javascript:;" class="button-action-no"><span>否</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!--新确认对话框-->
<div id="ec_ui_confirm_new" class="popup-area-new hide">
    <div class="b">
        <p id="ec_ui_confirm_new_msg"></p>
        <div class="popup-button-area"><a id="ec_ui_confirm_new_yes" href="javascript:;" class="box-button-style-1"><span>是</span></a><a id="ec_ui_confirm_new_no" href="javascript:;" class="box-button-style-1"><span>否</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down-new"></s></div>
</div>

<!--提示对话框-->
<div id="ec_ui_tips" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_tips_msg" class="tac"></p>
        <div class="popup-button-area tac"><a id="ec_ui_tips_yes" href="javascript:;" class="button-action-yes" title="确定"><span>确定</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!-- 2018-10-26-悬浮工具栏-start -->
<div class="hungBar j-hungBar">
    <div class="hungBar-content">
        <a target="_blank" onclick="judge_login()"  timeType="timestamp" class="hungBar-cart" title="购物车"><span style="display:none;"></span><i>购物车</i></a>
        <a target="_blank" id="tools-nav-service-robotim" onclick = "pushRightHelpMsg('在线客服')" href="javascript:;" class="hungBar-service" title="在线客服"><i>在线客服</i></a>
        <a id="tools-nav-survery" onclick="ec.survery.open();pushRightHelpMsg('意见反馈')" href="javascript:;" class="hungBar-feedback" title="意见反馈"><i>意见反馈</i></a>
        <a href="javascript:;" class="hungBar-top" title="返回顶部" id="hungBar-top"><i>返回顶部</i></a>
    </div>
</div>
<!-- 2018-10-26-悬浮工具栏-end -->

<!--意见反馈box-->
<div id="survery-box" class="ol_box_4 hide" style="width:600px;">
    <div class="box-ct">
        <div class="box-header">
            <div class="box-tl"></div>
            <div class="box-tc">
                <div class="box-tc1"></div>
                <div class="box-tc2"><a class="box-close" title="关闭" onclick="ec.survery.close();" href="javascript:;"></a><span class="box-title">意见反馈</span></div>
            </div>
            <div class="box-tr"></div>
        </div>
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
            <tr>
                <td class="box-cl"></td>
                <td class="box-cc">
                    <div class="box-content">
                        <!-- -表单-意见反馈-start -->
                        <div class="form-feedback-area">
                            <div class="b">
                                <div class="form-edit-area">
                                    <form autocomplete="off" id="form-feedback">
                                        <div class="form-edit-table">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <select name="type" id="surverytype">
                                                            <option>请选择疑问类型</option>
                                                            <option>商品质量（手机、平板等软、硬件质量）</option>
                                                            <option>商品缺货</option>
                                                            <option>物流发货（发货快慢、发错货、送件人态度等）</option>
                                                            <option>售后服务（服务网点、维修、退换货、客服）</option>
                                                            <option>网站问题（商城功能失效、不好用等）</option>
                                                            <option>其他问题</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>您的问题与建议</b><span id="errMsg"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><textarea name="content" id="surveryContent" type="textarea" class="textarea"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><b>您的联系方式</b></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="text" name="contact" id="surveryContact"></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="fl">
                                                            <input type="text" maxlength="4" class="identify" name="code" id="surveryVerify" onkeyup="if(this.value.length==4){ec.survery.validate();}">&nbsp;&nbsp;<img id="surveryVerifyImg" onclick="ec.survery.reloadCode()" class="vam" alt="验证码">&nbsp;&nbsp;&nbsp;&nbsp;<span class="vam"><a class="u" href="javascript:;" onclick="ec.survery.reloadCode();">换一张</a></span>
                                                        </div>
                                                        <div class="fr">
                                                            <a href="javascript:;" onclick="ec.survery.submit();" class="button-action-yes"><span>提交</span></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- -表单-意见反馈-end -->
                    </div>
                </td>
                <td class="box-cr"></td>
            </tr>
            </tbody>
        </table>
        <div class="box-bottom">
            <div class="box-bl"></div>
            <div class="box-bc"></div>
            <div class="box-br"></div>
        </div>
    </div>
</div>

<div id="globleParameter" class="hide" context="" stylePath="https://res8.vmallres.com/20181222/css" scriptPath="https://res9.vmallres.com/20181222/js" imagePath="https://res.vmallres.com/20181222/images" mediaPath="https://res.vmallres.com/pimages/" ></div>


<!-- 2017-02-15-底部-start -->
<div class="footer-container">
    <div class="footer">
        <div class="footer-warrant-area clearfix"><p class="footer-warrant-logo fl"><a href="https://www.vmall.com"><img src="picture/hbhfauyhla0u5qms8nkr.png" title="vmall.png" style="float:none;" /></a></p><div class="fl"><ul class="footer-warrant-link"><li><a href="https://www.huawei.com/cn/">华为集团</a></li><li><a href="https://consumer.huawei.com/cn/">华为CBG官网</a></li><li><a href="http://www.honor.cn/">荣耀官网</a></li><li><a href="https://club.huawei.com/">花粉俱乐部</a></li><li><a href="http://appstore.huawei.com/">华为应用市场</a></li><li><a href="https://emui.huawei.com/cn/">EMUI</a></li><li><a href="https://cloud.huawei.com">华为终端云空间</a></li><li><a href="https://developer.huawei.com/cn/">开发者联盟</a></li><li><a href="https://m.vmall.com/">华为商城手机版</a></li><li><a href="https://www.vmall.com/shopdc/sitemap.html">网站地图</a></li></ul><a href="https://www.vmall.com/help/faq-2635.html" target="_blank" title="隐私声明" rel="nofollow">隐私声明</a><a href="https://www.vmall.com/help/faq-778.html" target="_blank" title="服务协议" rel="nofollow"> 服务协议</a><a href="https://www.vmall.com/help/faq-11810.html" target="_blank" title="COOKIES" rel="nofollow"> COOKIES</a> Copyright © 2012-2019 华为软件技术有限公司 版权所有 保留一切权利<br />公安备案 <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009" target="_blank" rel="nofollow">苏公网安备32011402010009号</a><em> | </em><a target="_blank" href="http://www.miitbeian.gov.cn" rel="nofollow">苏ICP备17040376号-6</a><br /> 增值电信业务经营许可证：苏B2-20130048号<em>| </em><a href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/2E50AF12E8B14A8B9721D1548FC0CDD2" target="_blank">网络文化经营许可证：苏网文[2015] 1599-026号</a><br /></div><p class="fr footer-warrant-img"><a class="fl" href="http://privacy.truste.com/privacy-seal/validation?rid=81be9ca0-c821-4e2c-ad4b-ff7cff98f75f&amp;lang=zh-cn" target="_blank" rel="nofollow"><img src="picture/20180522101715775.jpg" alt="TRUSTe隐私认证" title="TRUSTe隐私认证" /></a>                        <a class="fl" href="https://res.vmallres.com/pimages//sale/2018-06/20180615181402966.jpg" target="_blank" rel="nofollow"><img src="picture/20160226162415360.png" alt="电子营业执照" title="电子营业执照" /></a><br /></p>  <p><br /></p></div><script type="text/javascript">
        $(function(){
            $("title").html($("title").text());
        });
        ec.code.addAnalytics({dmp:true});
    </script>
    </div>
</div>
<!-- 2017-02-15-底部-end -->
<!--<script src="js/slider.min.js"></script>-->
<!--<script src="js/swiper.min.js"></script>-->
<script>
    new Slider({//友情链接
        objid: '#serverlink',
        listname: '.service-list',
        listitem: 'ol',
        shownum: 1
    }).init();
</script>
<script type="text/javascript">
    ec.load("ec.box" , {loadType : "lazy"});
    /**
     *功能：给鼠标移动到s-dropdown上面的时候，记得给他多添加一个hover类样式
     *目的是兼容ie6
     *@author 李峰
     */
    $(function(){
        $(".s-dropdown").hover(function(){
            $(this).addClass("hover");
        },function(){
            $(this).removeClass("hover");
        });
        var maxcolor=$('.top-banner-max').find('p').children('a').css("background-color");
        var mincolor=$('.top-banner-min').find('p').children('a').css("background-color");

        $('.top-banner-max').css({"background-color":maxcolor,overflow:"hidden"});
        $('.top-banner-min').css({"background-color":mincolor,overflow:"hidden"});
    });

    //显示全球导航选择层
    function showSelectRegion()
    {
        var box = new ec.box($("#selectRegion-tips").val(),
            {
                boxid : "region-select-box",
                boxclass : "ol_box_4",
                title : "Please select your country or region",
                width : 700,
                showButton : false,
                autoPosition:false,
                onopen: function(box){
                },
                onok : function(box){
                },
                oncancel : function(box){
                    box.close();
                    $(".ol_box_mask").remove();
                },
                onclose : function(box){
                    $(".ol_box_mask").remove();
                }
            });

        box.open();

        $(".box-title").css("font-size","24px");
        $("#region-select-box").css("height","auto");
        $(".ol_box_mask").click(function(){box.close();});

        $(".box-header").unbind("mousemove");
        $(".box-header").unbind("mousedown");

        var divTop=document.getElementById("region-select-box").offsetTop;
        $("#region-select-box").mousedown(function (e)
        {
            var e=e||window.event;
            var region = document.getElementById("region-select-box");

            var leftX = e.clientX - region.offsetLeft;
            var topY = e.clientY - region.offsetTop;
            $("#region-select-box").mousemove(function (event)
            {
                var e=event||window.event;
                var left=    e.clientX - leftX;
                var top=e.clientY - topY;

                if(e.clientX - leftX<20-region.offsetWidth){
                    left=20-region.offsetWidth;
                }
                if(e.clientY - topY<20-region.offsetHeight){
                    top=20-region.offsetHeight;
                }

                if(e.clientY - topY+20>=$(window).height()){
                    top=$(window).height() - 20;
                }
                if(e.clientX - leftX+20>=$(window).width()){
                    left=$(window).width() - 20;
                }
                $("#region-select-box").css({"left": left, "top": top});
                divTop=top;

            });
        });
        $("#region-select-box").mouseup(function () {
            $("#region-select-box").unbind("mousemove");
        });
        $(window).scroll(function () {
            $("#region-select-box").offset({ top: divTop });
        });
    }
</script>
<script type="text/javascript">
    ec.load("ec.slider", {
        loadType : "lazy",
        callback : function() {
            $("#ec-erweima").slider({
                width:     91, //必须
                height:     96, //必须
                style : 1,                    //1显示分页，2只显示左右箭头,3两者都显示
                pause : 120000,           //间隔时间
                auto : true
            });
        }
    });

    ec.ready(function(){
        try
        {
            ec.minicart.readyContent();
            ec.minicart.microCartTpl = new ec.template($('#micro-cart-tpl').val());
            var $miniCart = $('#header-toolbar-minicart-content');
            $('#header-toolbar-minicart').hover(function ()
            {
                if(ec.checkBrowerIE())
                {
                    var act = document.activeElement.id;
                    if(act=='search-kw')
                    {
                        $("#search-kw").blur();
                    }
                }

                $(this).unbind("mouseenter");
                ec.minicart.content();
            }, function ()
            {
                $(this).bind("mouseenter",function()
                {
                    if(ec.checkBrowerIE())
                    {
                        var act = document.activeElement.id;
                        if(act=='search-kw')
                        {
                            $("#search-kw").blur();
                        }
                    }

                    $(this).unbind("mouseenter");
                    ec.minicart.content();
                });
            });

            $('#up_loginName-hover').hover(function ()
            {
                if(ec.checkBrowerIE())
                {
                    var act = document.activeElement.id;
                    if(act=='search-kw')
                    {
                        $("#search-kw").blur();
                    }
                }

                $(this).unbind("mouseenter");
            }, function ()
            {
                $(this).bind("mouseenter",function()
                {
                    if(ec.checkBrowerIE())
                    {
                        var act = document.activeElement.id;
                        if(act=='search-kw')
                        {
                            $("#search-kw").blur();
                        }
                    }

                    $(this).unbind("mouseenter");
                });
            });

        }
        catch (err)
        {
            // console.log(err);
        }

    });
    // 更新购物车数字
    $(function(){
        ec.minicart.updateMiniCartNum();
        $('.j-hungBar .hungBar-cart').hover(function(){
            ec.minicart.updateMiniCartNum();
        });
    });
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https'){
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else{
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>

<script>


    function pushMyOrderMsg()
    {
        ec.account.afterLogin(function(){
            window.location.href="https://www.vmall.com/member/order?t=1546928148302timestamp";
        });
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000301",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000301", "link", value]);
    }

    function pushMyCartMsg()
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000401",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000401", "link", value]);
    }


    function pushCartProMsg(skuId,url,location)
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "SKUID":skuId ,
                    "URL":url,
                    "location":location,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000402",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000402", "link", value]);
    }

    function pushFootAdvertMsg(name,url)
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "name":name ,
                    "URL":url,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000501",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000501", "link", value]);
    }


    $(".fl").find("dd").find("a").bind("click",function(){
        var HREF = "";
        HREF = this.href;
        var name = this.innerHTML;
        if(HREF==null || HREF == "")
        {
            return;
        }
        if(this.id=="tools-nav-service-robotim-button")
        {
            name = "在线客服";
        }
        if(this.className=="service-btn btn-report")
        {
            name = "不良信息举报";
        }
        pushFootAdvertMsg(name,HREF);
    });


    $(".footer-warrant-area.clearfix").find("p").find("a").click(function()
    {
        var url = $(this).attr("href");
        var value  = {};
        if(url != "" && url != null)
        {
            if($(this).attr("class")=="fl")
            {
                value = {
                    "UID":ec.util.cookie.get("uid"),
                    "TID":getPtid(),
                    "TIME":getTime(),
                    "CONTENT":
                        {
                            "ADID":$(this).find("img").attr("src"),
                            "URL":url,
                            "click":"1"
                        }
                };
            }
            else
            {
                value = {
                    "UID":ec.util.cookie.get("uid"),
                    "TID":getPtid(),
                    "TIME":getTime(),
                    "CONTENT":
                        {
                            "name":$(this).html(),
                            "URL":url,
                            "click":"1"
                        }
                };
            }
            ec.account.dapPushMsg("300000502",value,"click");
            ec.code.addAnalytics({hicloud:true});
            _paq.push(["trackLink","300000502", "link", value]);

        }
        else
        {
            return;
        }
    });

    function pushRightHelpMsg(buttonName)
    {
        var value ={
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "buttonName":buttonName,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300000601",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300000601", "link", value]);
    }


    jump = function(url,obj)
    {
        if(typeof(obj.html()) != "undefined" && obj.html() != null && obj.html() != "")
        {
            pushFootAdvertMsg($(this).html(),url);
        }
        var win = window.open(url,"_blank") ;
        win.opener = null ;
    }

    function pushProRelationMsg(productId,column)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "productId":productId,
                    "row":"1",
                    "column":column,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300020601",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300020601", "link", value]);

    }

    function pushProHotMsg(skuCode)
    {
        var value = {
            "UID":ec.util.cookie.get("uid"),
            "TID":getPtid(),
            "TIME":getTime(),
            "CONTENT":
                {
                    "SKUCode":skuCode ,
                    "click":"1"
                }
        };
        ec.account.dapPushMsg("300020701",value,"click");
        ec.code.addAnalytics({hicloud:true});
        _paq.push(["trackLink","300020701", "link", value]);

    }
</script>

<script type="text/javascript" id="footerToken"></script></body>
</html>