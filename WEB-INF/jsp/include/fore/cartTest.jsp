<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <link rel="stylesheet" href="css/cart/app.43b313b.css" />
</head>
<body>
<%--头部--%>
<jsp:include page="top.jsp"/>
<div class="sc">
    <div class="layout">
        <div class="hr-20"></div>
        <div class="sc-list">
            <div class="sc-pro-title clearfix">
                <!--这里要写js切换选中或未选中的图标-->
                <!--并且还要并发选中或取消选中所有的商品-->
                <label class="checkbox">
                    <input readonly="readonly" class="vam checked"/>
                    全选
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
                        <c:forEach items="${carts}" var="c" varStatus="loop">
                            <div class="sc-pro-list clearfix">
                                <!--这里要写js切换选中或未选中的图标-->
                                <label class="checkbox">
                                    <input readonly="readonly" class="vam checked" />
                                </label>
                                <div class="sc-pro-area">
                                    <div class="sc-pro-main clearfix">
                                        <!--这里用来放入商品的图片-->
                                        <a href="img/productSingle/${c.pid}.jpg" target="_blank" class="p-img">
                                            <img src="img/productSingle/${c.pid}.jpg" alt="${products[loop-1].name}">
                                        </a>
                                        <div class="tips-1 p-stock-tips" style="display: none;">限购件 </div>
                                        <ul>
                                            <li>
                                                <!--这里用来放入商品的名字-->
                                                <a href="/product/10086674308116.html#10086336415740" target="_blank" title="${products[loop-1].name}" class="p-name">

                                                        ${products[loop-1].name}
                                                </a>
                                            </li>
                                            <li>
                                                <!--这里用来放入商品的单价-->
                                                <div class="p-price">
                                                    <span>¥&nbsp;${products[loop-1].promotePrice}</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="p-stock">
                                                    <!--这里需要写js来实现数量的加减-->
                                                    <div class="p-stock-area">
                                                        <input type="number" class="p-stock-text">
                                                        <p class="p-stock-btn">
                                                            <a class=>+</a>
                                                            <a class="disabled">-</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <!--这里用来放入单件商品的总价-->
                                            <li class="p-price-total">
                                                ¥&nbsp;${products[loop-1].promotePrice}
                                            </li>
                                            <li>
                                                <!--这里实现商品的删除功能-->
                                                <a href="javascript:;" seed="cart-item-del" class="p-del">删除</a>
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
                        全选
                    </label>
                    <a href="javascript:;">删除</a>
                </div>
                <!--这里是结算按钮-->
                <div class="sc-total-btn ">
                    <a href="javascript:;">立即结算</a>
                </div>
                <div class="sc-total-price ">
                    <!--这里放入所有被选商品的总价-->
                    <p>
                        <label>总计：</label>
                        <span>¥&nbsp;4299.00</span>
                        <em><b>不含运费</b></em>
                    </p>
                    <!--这里放入商品的总数量-->
                    <div class="total-choose">
                        已选择

                        <em>1</em>
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
</body>
</html>