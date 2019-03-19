<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品详情</title>

	<meta name="keywords" content="荣耀V20,荣耀V20价格,荣耀V20怎么样,华为商城" />
	<meta name="description" content="荣耀V20官方渠道售卖！华为商城提供最新款的荣耀V20的价格、参数、图片等信息。官方品质保证，欢迎选购！"/>
	<link rel="shortcut icon" href="https://www.vmall.com/favicon.ico" />
	<link href="css/commdity_detail/ec.core.base.min.css" rel="stylesheet" type="text/css">
	<link href="css/commdity_detail/main.min_1.css" rel="stylesheet" type="text/css">
	<script src="js/jquery/2.0.0/jquery.min.js"></script>
</head>

<script>

    $(function(){
        $("#pro-quantity-plus").click(function(){
            var temp =Number($("#pro-quantity").val());
            temp=temp+1;

            $("#pro-quantity").attr("value",temp);
        });
    });
    $(function(){
        $("#pro-quantity-minus").click(function(){
            var temp =Number($("#pro-quantity").val());
            temp=temp-1;
            if(temp<=0)
                temp=1;
            $("#pro-quantity").attr("value",temp);
        });
    });
    $(function(){
        $(".current_show").hover(function(){
            var temp = $(this).attr("src");
            var ctemp =$("#showBigPicture").attr("src");
            //$(this).attr("src",ctemp);
            $("#showBigPicture").attr("src",temp);
            //alert(temp);
        });
    });

    $(function(){
        $("#add_to_cart").click(function(){

            if (${empty user}) {
                $(location).prop('href', "login");
            }
            else {
                var number =Number($("#pro-quantity").val());
                var pid =Number($("#current_product_id").val());
                var uid =Number($("#current_user_id").val());
                var page="create_items";
                $.post(
                    page,
                    {"pid":pid,"number":number,"uid":uid},
                    function(result){
                        alert(result);
                    }
                )
            }
        });
    });
</script>

<
<script>


    $(function(){
        $(".product-gallery-img").hover(function(){
            $(".wename").show();
        }, function(){
            $(".wename").hide();
        });
    });

    $(function () {
		$(".product-gallery-img").mouseover(function () {
			$('#wespan').css("display", "block");
        });
        $(".product-gallery-img").mouseout(function () {
			$('#wespan').css('display', 'none');
        });
    })

    $(function(){
        $(".product-gallery-img").mouseover(function (e){
//            img框的x，y
            var x = e.clientX;
            var y = e.clientY;

            var sx = $(".product-gallery-img").offset().left;
            var sy = $(".product-gallery-img").offset().top-$(window).scrollTop();

            var mx = x-sx;
            var my = y-sy;

            var mw = $("#wespan").width()/2;
            var mh = $("#wespan").height()/2;

            $("#wespan").css({left:mx - mw +"px", top:my - mh + "px"});

            var lw = $('#wespan').position().left;
            var lh = $('#wespan').position().top;

            var maxW = $(".product-gallery-img").width()-$('#wespan').width();
            var maxH = $('.product-gallery-img').height()-$('#wespan').height();

            if(lw <=0){$('#wespan').css('left', '0px');}
            if(lw>=maxW){$('#wespan').css('left', maxW+'px');}
            if(lh<=0){$('#wespan').css('top', '0px');}
            if(lh>=maxH){$('#wespan').css('top', maxH+'px');}

            var lw = $('#wespan').position().left;
            var lh = $('#wespan').position().top;
            var rate1 = $('.wename img').width()/$(".product-gallery-img").width();
            var rate2 = $('.wename img').height()/$(".product-gallery-img").height();
            var newX = lw*rate1;
            var newY = lh*rate2;

            $('.wename img').css({left: -newX + 'px', top: -newY + 'px'});

        } );
    });


</script>



<body>
<%--头部--%>
<jsp:include page="top.jsp" />
<c:forEach items="${products}" var="p">
	<div class="product clearfix">
		<div class="left">
			<!-- 20170518-商品图片-start -->
			<!--这里要写个js来实现图片的切换
                把图片（小）的li标签的class改成current
            -->
			<div class="product-gallery">
				<div class="relative">
					<div class="product-gallery-img" id="pic-container">
						<!--这里来插入图片（大）-->
						<a id="product-img" class="showbigpng" href='https://res.vmallres.com/pimages//product/6901443280995/800_800_1545877507789mp.png' class = 'cloud-zoom'  rel="adjustX: 10, adjustY:0, zoomWidth:400 , zoomHeight:400">
							<span id="wespan"></span>
							<img id="showBigPicture" class="showbigpng" src="img/productSingle/${p.firstProductImage.id}.jpg" alt="${p.name}"/>

						</a>
					</div>

				</div>
				<div class="product-gallery-nav">
					<!--这里用js来实现左右，可以省略，图片可能不会有这么多-->
					<a href="javascript:;" class="product-gallery-back" onclick="ec.product.imgSlider.prev()"></a><!--不可点击添加class="disabled"-->
					<div class="product-gallery-thumbs">
						<ul  id="pro-gallerys" >
							<!--这里来插入图片（小）-->

							<c:forEach items="${pics}" var="pic">
								<li class="current"   >
									<a ><img class="current_show" src="img/productDetail/${pic.id}.jpg" alt="${p.name}"/></a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<a href="javascript:;" class="product-gallery-forward" onclick="ec.product.imgSlider.next()"></a>
				</div>
			</div>
			<!-- 20170518-商品图片-end -->
		</div>
		<div class="right relative">
			<div id="pro-add-success-mask" style="visibility:hidden;font-size:18px;width:348px;position: absolute;"></div>
			<div id="cart-tips" class="pro-popup-area hide">

				<div class="b">
					<div class="pro-add-success">
						<dl>
							<dt><s></s></dt>
							<dd>
								<div class="box-right-2">

									<p>荣耀V20</p>
								</div>
								<div class="box-button">
									<a class="box-cancel" href="javascript:;" onclick="$('#cart-tips').hide()">再逛逛</a>
									<a href="javascript:;" class="box-ok" onclick="ec.product.gotoshoppingCart()">去结算</a>
								</div>
								<p>荣耀V20</p>
								<div class="pro-add-success-msg">成功加入购物车!</div>
								<div class="pro-add-success-total">购物车中共&nbsp;<b id="cart-total">0</b>&nbsp;件商品，金额合计&nbsp;<b  id="cart-price">¥&nbsp;0</b></div>
								<div class="pro-add-success-button"><a href="javascript:;" class="button-style-1 button-go-cart" onclick="ec.product.gotoshoppingCart()">去结算</a><a class="button-style-4 button-walking" href="javascript:;" onclick="$('#cart-tips').hide()">继续逛逛&nbsp;>></a></div>
							</dd>
						</dl>
					</div>
				</div>
			</div>

			<!-- 20130913-弹出层-购买延保-start -->
			<div id="popup-extend" class="pro-popup-area hide">
				<div class="h">
					<a href="javascript:;" class="pro-popup-close" title="关闭" onclick="$('#popup-extend').hide()">关闭</a>
				</div>

				<div class="b">
					<div class="pro-extend-area">
						<h3>购买延保</h3>
						<div class="pro-extend-search">
							<div class="form-edit-area">
								<form action="javascript:;" id="checkExtend-ID" onsubmit="return ec.product.checkExtend()">
									<input type="hidden" id="extendSkuId" />
									<input type="text" class="text vam" id="extend-text" maxlength="50" /><input class="button-style-4 button-extend-search vam" type="submit" value="查看可购买的延保" />
								</form>
							</div>
						</div>

						<div class="pro-extend-result hide"  id="pro-extend-result-id">
							<div id="extend-msg-succuss" class="hide"></div>
							<div id="extend-msg-error" class="hide"></div>
						</div>

						<div class="pro-extend-tips">温馨提示：IMEI/SN/MEID号可在产品外包装上找到，可拆卸电池的手机可将电池拆掉电池下面的标签上可以看到，手机上输入*#06#也可以显示。</div>
						<div class="pro-extend-button">
							<a id="button-extend" class="button-style-disabled-1 button-go-extend-checkout-disabled" href="javascript:;" title="提交订单" onclick="ec.product.extendBuy(this)"><span>提交订单</span></a>
						</div>
					</div>
				</div>

			</div>
			<!-- 20130913-弹出层-购买延保-end -->


			<!--弹出层-提示信息 -->
			<div id="popup-tips" class="pro-popup-area hide">
				<div class="h">
					<a href="javascript:;" class="pro-popup-close" title="关闭" onclick="$('#popup-tips').hide()"><span>关闭</span></a>
				</div>

				<div class="b">
					<div class="pro-add-error">
						<div class="pro-add-error-msg" id="popup-tips-msg" >非常抱歉！该商品不能单独销售！</div>
						<div class="pro-add-error-button"><a class="button-style-1 button-par-define" href="javascript:;" onclick="$('#popup-tips').hide()" title="知道了">知道了</a></div>
					</div>
				</div>
			</div>

			<!-- 20170518-商品简介-start -->
			<div class="product-property clearfix relative">
				<div id="product-property-recommand">
					<!-- 20170518-商品简介-商品信息-start -->
					<div class="product-meta">
						<!--这里插入产品的名字和subTitle-->
						<h1 id="pro-name">${p.name}&nbsp;${p.subTitle}</h1>
						<div class="product-slogan" id="skuPromWord"><!--三种状态，第一种文字不超过两行class="pro-slogan",第二种文字超过两行没有展开class="pro-slogan pro-slogan-hide",第三种文字展开不超过六行class="pro-slogan pro-slogan-show"点击下拉的按钮出现-->
							<a href="javascript:;" class="product-slogan-btn"></a>
							<!--这里插入开售时间-->
							<span class="product-slogan-link">购机享多重权益</span>
							<!--这里插入产品的参数-->
							<span>${p.subTitle}</span>
						</div>
					</div>

					<div class="product-info">
						<div class="product-info-list clearfix">
							<label>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</label>
							<div class="product-price clearfix">
								<div class="product-price-info" >
									<span id="pro-price-label" class="f24"></span>
									<!--这里插入优惠后的价格-->
									<span id="pro-price" class="f24"><em>¥</em>${p.promotePrice}<span>
                              <input type="hidden" id="pro-price-hide" value='2999.00' />
										<!--这里插入优惠前的价格-->
                              <s id="pro-price-old"><em>¥</em>${p.originalPrice}</s>
                              <%--<b id="pro-price-label-deposit" style="display:none">订金</b>--%>
                              <%--<span id="pro-price-deposit" style="display:none"></span>--%>
                              <%--<b id="pro-price-label-amount" style="display:none">可抵</b>--%>
                              <%--<span id="pro-price-amount" style="display:none"></span>--%>
								</div>
							</div>
						</div>


						<div class="product-info-list clearfix hide" id="couponBtn">
							<label>优&nbsp;&nbsp;惠&nbsp;&nbsp;券</label>
							<div class="product-prom fl  show" id="couponTag">

							</div>
						</div>



						<!-- 20170518-商品简介促销消息-start -->
						<div class="product-info-list clearfix" id="product-info-list-new"  0>
							<label>促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</label>
							<div class="product-prom fl " id = "product-prom-all">

								<div class="product-prom-item clearfix product-parts" id="pro-match-gift">
									<em class="tag">积分翻倍</em>
									<div class="product-prom-con">
										<div class="product-parts-list" id="pro-gift-list-select" >
										</div>
										<a href="javascript:;" class="product-partscolor" onclick="ec.product.giftshow()">活动赠送翻倍积分，积分可抵现~</a>
									</div>
								</div>



							</div>
						</div>
						<!-- 20170518-商品简介促销消息-end -->
					</div>



					<!-- 20180206-商品简介-end -->



					<div class="hr-20"></div>


					<!-- 20170518-商品简介-服务说明-start -->
					<div class="product-pulldown clearfix" id="product-pulldown1">
						<label>服务说明</label>
						<div class="fl">
							<!-- 20160914-商品详情-预计送达-start -->
							<div class="product-address clearfix hidden" id="pro-predict">
								<div class="product-pulldown-main relative">
									<div class="fl" id="address">
										<a href="#" class="product-pulldown-btn"></a>
									</div>
									<div class="product-pulldown-detail">
										<div class="product-pulldown-detailmain">
											<div class="product-address-choose">
												<div class="product-address-normal" id="address_normal_effective_time">
													<dl class="clearfix" id="in_common_use_address">
													</dl>
													<div class="tips hide" id="deatilAddress"></div>
												</div>
												<div class="product-address-new" id="newAddress">
													<dl class="clearfix" id="provice_info">
													</dl>
												</div>
												<div class="product-address-table" id="address_table">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-address-prompt">
									<span></span><em></em>
									<p class="hide" id="expectTimeDesc"></p>
								</div>
							</div>
							<!-- 20160914-商品详情-预计送达-end -->


							<div class="product-description clearfix">
								<p>已满48元已免运费<em></em>由华为商城负责发货，并提供售后服务</p>
							</div>
						</div>
					</div>

					<!-- 20170518-商品简介-服务说明-end -->
					<!-- 20171024-商品简介-商品编码-start -->
					<div class="product-description clearfix">
						<label>商品编码</label>
						<div class="fl" id="pro-sku-code2">
							<!--这里填商品编码-->
								${p.id}
						</div>
					</div>
					<!-- 20171024-商品简介-商品编码-end -->
					<div class="hr-5"></div>
					<div class="line"></div>
					<div class="hr-16"></div>


					<!--<div id="pro-skus" class="">加载中...</div>-->
					<!--联通合约机套餐-->
						<%--<div id="contractLst" class="hide">--%>
						<%--<dl class="product-choose clearfix" >--%>
						<%--<label>合约机</label>--%>
						<%--<div class="product-choose-detail">--%>
						<%--<ul id="contractList-ol">--%>
						<%--</ul>--%>
						<%--</div>--%>
						<%--</dl>--%>
						<%--<form action="/contract/choose-{id}" id="contractForm" class="hide">--%>
						<%--<input type="hidden" value="" id="gifts" name="gifts" />--%>
						<%--</form>--%>
						<%--</div>--%>

					<!-- 20170518-商品简介-保障服务-start -->
					<div class="product-pulldown clearfix" id="pro-service">
						<label>保障服务</label>
						<!-- 延保 -->
						<div class="product-service " >
							<span class="hide" id="extendSelect" skuid="" data-scode="" interest-price=""></span>
							<div class="product-service-detail" >
								<div class="product-service-list" id="extendProtected">
									<ul>
									</ul>
								</div>
							</div>
						</div>

						<!-- 意外保 -->
						<div class="product-service " >
							<span class="hide" id="accidentSelect" skuid="" data-scode="" interest-price=""></span>
							<a href="javascript:;" onclick="ec.product.click_function(this)" class="product-service-btn">
								<span class="fl max-w">碎屏(含后盖)服务宝1年</span>
								<span class="fl">&nbsp;￥160</span>
							</a>
							<div class="product-service-detail" >
								<div class="product-service-list" id="accidentProtected">
									<ul>
									</ul>
								</div>
							</div>
						</div>


					</div>
					<!-- 20170518-商品简介-保障服务-end -->

					<input type="hidden" value="" id="interestOrderNow"/>
					<input type="hidden" value="" id="interestOrderNow2"/>
					<!-- 20181026-商品简介-分期免息-start -->
					<div class="product-choose clearfix hide" id ="prd-noInterset" interest-allow interest-button >
						<label>分期免息</label>
						<div class="product-choose-detail relative product-choose-pulldown">
							<ul>
								<li class="" id = "hbShow"><!-- 选中li添加class="selected" 点击打开套餐添加class="click"-->
									<div class="sku">
										<a class="product-pulldown-btn" href="javascript:;">
											<p><span>花呗分期</span></p>
										</a>
									</div>

									<div class="product-stages product-package-mini" id = "hbDetail">
										<div class="product-stages-con">
											<div class="product-stages-main">
												<ul class="clearfix">
												</ul>
											</div>
											<div class="tips" >
												<h2>花呗分期是什么？</h2>
												<p>花呗分期是蚂蚁金服（支付宝公司）提供的先消费后分期还款的赊购服务。<br/>免息活动仅限单款商品的订单，对含多款商品的订单暂不支持。</p>
											</div>
										</div>
										<div class="product-package-mini-tool clearfix">
											<div class="fr">
												<a id="interestHBPayNow" href="javascript:;" class="product-package-mini-btn product-button02 disabled" onclick="ec.product.interest.payByInterest(1);" interest-info><span>分期购买<span></span></span></a>
											</div>
										</div>
									</div>

								</li>
								<li id ="hlShow">
									<div class="sku">
										<a class="product-pulldown-btn" href="javascript:;">
											<p><span>掌上生活分期</span></p>
										</a>
									</div>

									<div class="product-stages product-package-mini " id = "hlDetail">
										<div class="product-stages-con">
											<div class="product-stages-main">
												<ul class="clearfix">
												</ul>
											</div>
											<div class="tips" >
												<h2>掌上生活分期是什么？</h2>
												<p>掌上生活分期是招商银行信用卡中心提供的消费分期服务。<br/>免息活动仅限单款商品的订单，对含多款商品的订单暂不支持。</p>
											</div>
										</div>
										<div class="product-package-mini-tool clearfix">
											<div class="fr">
												<a id="interestPayHLNow" href="javascript:;" class="product-package-mini-btn product-button02 disabled" onclick="ec.product.interest.payByInterest(2);" interest-info><span>分期购买<span></span></span></a>
											</div>
										</div>
									</div>

								</li>
							</ul>






						</div>
					</div>
					<!-- 20181026-商品简介-分期免息-end -->


					<!-- 20170518-商品简介-物流现货-start -->
					<div class="product-pulldown clearfix hide">
						<label>物流售后</label>
						<div class="product-pulldown-main relative"><!--鼠标悬浮按钮的图标span选择后 class="product-pulldown-main relative" 改为 class="product-pulldown-main product-pulldown-main-show relative"-->
							<a href="#" class="product-pulldown-btn">江苏省&gt;南京市&gt;玄武区<span></span></a>
							<div class="product-pulldown-detail">
								<div  class="product-pulldown-detailmain">
								</div>
							</div>
						</div>
					</div>
					<!-- 20170518-商品简介-物流现货-end -->

					<!-- 推荐-start -->
					<div id = "Recommend" class="clearfix">
						<label>推荐</label>
						<div class="product-choose-relation">
							<!--这里为推荐商品-->
							<ul class="clearfix">
								<li><a href = "/product/10086335437779.html" target="_blank" onclick = "pushProRelationMsg(10086335437779,1)">荣耀FlyPods系列无线耳机</a></li>
								<li><a href = "/product/10086200630069.html" target="_blank" onclick = "pushProRelationMsg(10086200630069,2)">荣耀存储</a></li>
								<li><a href = "/product/10086268042691.html" target="_blank" onclick = "pushProRelationMsg(10086268042691,3)">荣耀手表</a></li>
								<li><a href = "/product/10086066822495.html" target="_blank" onclick = "pushProRelationMsg(10086066822495,4)">荣耀无线耳机青春版</a></li>
							</ul>
						</div>
					</div>
					<!-- 推荐-end -->

					<div class="product-operation-main ">


						<!-- 20170518-商品简介-提交操作-start -->
						<div id="product-operation" class="product-operation relative">
							<div class="clearfix">
								<!-- 20170518-商品简介-购买数量-start -->
								<div class="product-stock" id="pro-quantity-area">
									<input id="pro-quantity" type="text" class="product-stock-text" placeholder="1" value="1"/>
									<!--这里要写个js来实现数量的加减-->
									<p class="product-stock-btn">
										<a id="pro-quantity-plus"  >&#43;</a>
										<a id="pro-quantity-minus"  >&minus;</a>
									</p>
								</div>
								<div class="product-stock hide" id="pro-quantity-area-nochange">
									<input type="text" class="product-stock-text" placeholder="1" value="1" disabled="disabled"/>
									<!--这里要写个js来实现数量的加减-->
									<p class="product-stock-btn">
										<a href="javascript:;" class="disabled">&#43;</a>
										<a href="javascript:;" class="disabled">&minus;</a>
									</p>
								</div>
								<!-- 20170518-商品简介-购买数量-end -->
								<input id="current_product_id" type="hidden" value="${p.id}">
								<input id="current_user_id" type="hidden" value="${user.id}">
								<div class="product-buttonmain">
									<!-- 20170518-商品简介-按钮-start -->
									<div id="pro-operation" class="product-button clearfix" style="visibility: visible;">
										<!--这里是添加到购物车按钮-->
										<%--<c:if test="${p.stock>0}">--%>
										<a id="add_to_cart" class="product-button02">
											<span>加入购物车</span>
										</a>
										<%--</c:if>--%>
										<%--<c:if test="${p.stock=0}">--%>
										<%--<a id="add_to_cart_no" class="product-button02_nostock">--%>
											<%--<span>暂时缺货</span>--%>
										<%--</a>--%>
										<%--</c:if>--%>
									</div>
									<!-- 20170518-商品简介-按钮-end -->
									<!-- 20170518-商品简介-协议-start -->
									<div class="product-agreement hide" id="product-deposit-agreement-area">
										<input type="checkbox"  id="pro-agreement-area-check" checked />
										<span>同意<a href="javascript:;"  onclick="ec.product.showDepositAgreement()">订金支付协议</a></span>
									</div>
									<!-- 20170518-商品简介-协议-end -->
									<!-- 20180212-商品简介-游客购买-start -->

									<!-- 20180212-商品简介-游客购买-end -->
								</div>
							</div>


						</div>


					</div>
					<!-- 20170518-商品简介-提交操作-end -->

				</div>
			</div>
			<!-- 20170518-商品简介-属性-end -->
		</div>

		<div id="cart-tips" class="pro-popup-area hide">
			<div class="h">
				<a href="javascript:;" onclick="$('#cart-tips').hide()" class="pro-popup-close" title="关闭"><span>关闭</span></a>
			</div>
			<div class="b">
				<div class="pro-add-success">
					<dl>
						<dt><s></s></dt>
						<dd>
							<p>荣耀V20</p>
							<div class="pro-add-success-msg">成功加入购物车!</div>
							<div class="pro-add-success-total">购物车中共&nbsp;<b id="cart-total">0</b>&nbsp;件商品，金额合计&nbsp;<b  id="cart-price">¥&nbsp;0</b></div>
							<div class="pro-add-success-button"><a href="javascript:;" class="button-style-1 button-go-cart" onclick="ec.product.gotoshoppingCart()">去结算</a><a class="button-style-4 button-walking" href="javascript:;" onclick="$('#cart-tips').hide()">继续逛逛&nbsp;>></a></div>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="wename" style="display: none">
			<img src="img/productSingle/${p.firstProductImage.id}.jpg" />
		</div>

	</div>
</c:forEach>



<div class="hr-20"></div>

<div class="line"></div>

<%--尾部--%>
<jsp:include page="bottom.jsp"/>
</body>
</html>