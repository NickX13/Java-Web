<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="top.jsp"/>
<%--头部--%>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>


<div class="listDataTableDiv">
    <table class="table table-striped table-bordered table-hover1  table-condensed">
        <thead>
        <tr class="success">
            <th>ID</th>
            <th>状态</th>
            <th>金额</th>
            <th width="100px">商品数量</th>
            <th width="100px">买家名称</th>
            <th>发货地址</th>
            <th>创建时间</th>
            <th>支付时间</th>
            <th>发货时间</th>
            <th>确认收货时间</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${os}" var="o">
            <tr>
                <td>${o.id}</td>
                <td>${o.status}</td>
                <td>￥${o.total}</td>
                <td align="center">${o.totalNumber}</td>
                <td align="center">${user.name}</td>
                <td>${user.address}</td>
                <td>${o.createDate}123</td>
                <td>${o.payDate}</td>
                <td>${o.deliveryDate}</td>
                <td>${o.confirmDate}</td>
            </tr>
            <%--<tr class="orderPageOrderItemTR"  oid=${o.id}>--%>
                <%--<td colspan="10" align="center">--%>

                    <%--<div  class="orderPageOrderItem">--%>
                        <%--<table width="800px" align="center" class="orderPageOrderItemTable">--%>
                            <%--<c:forEach items="${o.orderItems}" var="oi">--%>
                                <%--<tr>--%>
                                    <%--<td align="left">--%>
                                        <%--<img width="40px" height="40px" src="img/productSingle/${oi.product.firstProductImage.id}.jpg">--%>
                                    <%--</td>--%>

                                    <%--<td>--%>
                                        <%--<a href="foreproduct?pid=${oi.product.id}">--%>
                                            <%--<span>${oi.product.name}</span>--%>
                                        <%--</a>--%>
                                    <%--</td>--%>
                                    <%--<td align="right">--%>

                                        <%--<span class="text-muted">${oi.number}个</span>--%>
                                    <%--</td>--%>
                                    <%--<td align="right">--%>

                                        <%--<span class="text-muted">单价：￥${oi.product.promotePrice}</span>--%>
                                    <%--</td>--%>

                                <%--</tr>--%>
                            <%--</c:forEach>--%>

                        </table>
                    </div>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%--尾部--%>
<jsp:include page="bottom.jsp"/>
