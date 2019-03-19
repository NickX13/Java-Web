<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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



