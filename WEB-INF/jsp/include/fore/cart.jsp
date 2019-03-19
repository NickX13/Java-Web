<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%--头部--%>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<jsp:include page="top.jsp"/>

<script>
	$(function(){
	   $(".sc-total-btn").click(function(){
	       var uid =Number($("#user_id").val());
           $(location).prop('href',"createOrder?uid="+uid);
	   });
	});
    $(function(){
        $(".p-stock-text").blur(function(){
            var page="update_oi_number";
            var number =Number($(this).val());
            var idea =Number($(this).next().children("#oiid").val());
            var uid =Number($("#user_id").val());
            $.post(
                page,
                {"id":idea,"number":number,"uid":uid},
                function(result){
                    $("#total_prices").html(result);
                }
            )
            var totalprice =Number($(this).parent().parent().parent().prev().find("#each_price").text());
            totalprice =totalprice*number;
            $(this).parent().parent().parent().next().children("#total_price").html(totalprice);
        }) ;
    });
    $(function(){
        $(".product_plus").click(function(){
           // var temp =Number($("#product_number").val());
			var temp =Number($(this).parent().prev().val());
            temp=temp+1;
            var totalprice =Number($(this).parent().parent().parent().parent().prev().find("#each_price").text());
            totalprice =totalprice*temp;
            $(this).parent().parent().parent().parent().next().children("#total_price").html(totalprice);
            $(this).parent().prev().attr("value",temp);
            var page="update_oi_number";
            var number =Number($(this).parent().prev().val());
            var idea =Number($(this).next().val());
            var uid =Number($("#user_id").val());
            $.post(
                page,
                {"id":idea,"number":number,"uid":uid},
                function(result){
                    $("#total_prices").html(result);
                }
            )
        });
    });

    $(function(){
        $(".product_minus").click(function(){
            var temp =Number($(this).parent().prev().val());
            temp=temp-1;
            if(temp<=0)
                temp=1;
           // alert($(this).parent().parent().parent().parent().prev().find("#each_price").html());
            var totalprice =Number($(this).parent().parent().parent().parent().prev().find("#each_price").text());
            totalprice =totalprice*temp;

            $(this).parent().parent().parent().parent().next().children("#total_price").html(totalprice);
            $(this).parent().prev().attr("value",temp);
            var page="update_oi_number";
            var number =Number($(this).parent().prev().val());
            var idea =Number($(this).prev().val());
            var uid =Number($("#user_id").val());
            $.post(
                page,
                {"id":idea,"number":number,"uid":uid},
                function(result){
                    $("#total_prices").html(result);
                }
            )
        });
    });

</script>
<style >
	#product_p_m{
		position: absolute;
		top:-1px;
		left: 789px;
	}
</style>
    <div class="sc">
    	<div class="layout">
    		<div class="hr-20"></div>
    		<div class="sc-list">
    			<div class="sc-pro-title clearfix">
    				<!--这里要写js切换选中或未选中的图标-->
    				<!--并且还要并发选中或取消选中所有的商品-->
    				<label class="checkbox">
    					<input readonly="readonly" class="vam checked"/>
						<input type="hidden" id="user_id" value="${user.id}">

    				</label>
    				<ul class="clearfix">
    					<li>商品</li>
    					<li>单价</li>
    					<li>数量</li>
    					<li>小计</li>
    					<li>操作</li>
    				</ul>
    			</div>
    			<form id="cart-form" autocomplete="off" method="get">
    				<div class="sc-pro">
    					<div>
							<c:forEach items="${ois}" var="oi" varStatus="loop">
								<div  class="sc-pro-list clearfix">
    							<!--这里要写js切换选中或未选中的图标-->
    							<label class="checkbox">
    								<input readonly="readonly" class="vam checked" />

    							</label>
    							<div class="sc-pro-area">
    								<div class="sc-pro-main clearfix">
    									<!--这里用来放入商品的图片-->
    									<a href="img/productSingle/${oi.pid}.jpg" target="_blank" class="p-img">
											<img src="img/productSingle/${oi.product.firstProductImage.id}.jpg" />
    									</a>
    									<div class="tips-1 p-stock-tips" style="display: none;">限购10件 </div>
    									<ul>
    										<li>
    											<!--这里用来放入商品的名字-->
    											<a href="/product/10086674308116.html#10086336415740" target="_blank" title="${oi.product.name}" class="p-name">

														${oi.product.name}
 										        </a>
    										</li>
    										<li>
    											<!--这里用来放入商品的单价-->
    											<div class="p-price">
													<span>¥&nbsp;<span id="each_price">${oi.product.promotePrice}</span></span>
    											</div>
    										</li>
    										<li>
    											<div class="p-stock">
    												<!--这里需要写js来实现数量的加减-->
    												<div class="p-stock-area" id="number_div">
    													<input type="number" id="product_number" class="p-stock-text" value="${oi.number}">
    													<p class="p-stock-btn" id="product_p_m">
    														<a class="product_plus">+</a>
															<input type="hidden" id="oiid" value="${oi.id}">
    														<a class="product_minus">-</a>
    													</p>
    												</div>
    											</div>
    										</li>
    										<!--这里用来放入单件商品的总价-->
    										<li class="p-price-total">
												¥&nbsp;<span id="total_price">${oi.product.promotePrice * oi.number}</span>
    										</li>
    										<li>
    											<!--这里实现商品的删除功能-->
    											<a href="deleteCart?id=${oi.id}&uid=${oi.uid}" seed="cart-item-del" class="p-del">删除</a>
    										</li>
    									</ul>
    								</div>
    								<div class="sc-pro-parts"></div>
    							</div>
    						</div>
							</c:forEach>
						</div>
    				</div>
    			</form>
    		</div>
    		<div id="total_tool"></div>
    		<div class>
    			<div class="sc-total-tool layout clearfix ">
    				<div class="sc-total-control">
    					<label class="checkbox">
    						<input readonly="readonly" class="vam checked" />

    					</label>
    					<%--<a href="javascript:;">删除</a>--%>
    				</div>
    				<!--这里是结算按钮-->
    				<div class="sc-total-btn ">
    					<a>立即结算</a>
    				</div>
    				<div class="sc-total-price ">
    					<!--这里放入所有被选商品的总价-->
    					<p>
    						<label>总计：</label>
							<span >¥&nbsp;<a style="color: #ca141d" id="total_prices">${total_price}</a></span>
    						<em><b>不含运费</b></em>
    					</p>
    					<!--这里放入商品的总数量-->
    					<div class="total-choose">
    						已选择
                
                			<em>${ois.size()}</em>
                			件商品，优惠：
                
                			<span>¥&nbsp;0.00</span>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div id="invalidItemList" style="display: none;">
    			<div class="box-errors">
    				<span>以下商品暂不可购买</span>
    			</div>
    			<div class="order-no-list"></div>
    		</div>
    	</div>
    </div>
	<%--尾部--%>
	<jsp:include page="bottom.jsp"/>
