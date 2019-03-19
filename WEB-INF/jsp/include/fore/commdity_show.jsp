<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/commdity_show/ec.core.base.min.css" />
        <link rel="stylesheet" href="css/commdity_show/main.min.css" />
    </head>
    <body>

	<%--头部--%>
	<jsp:include page="top.jsp"/>

   <div class="layout">
	<!-- 20140726-频道-列表-start -->
    	<div class="channel-list">
        <!-- 20140727-商品列表-start -->
		<div class="pro-list clearfix">
			<ul>
				<c:forEach items="${products}" var="p">
            	<li>
					<div class="pro-panels">
						<!--这里放商品的图片-->
						<p class="p-img">
							<a target="_blank" href="productDetail?pid=${p.id}"  title="${p.name}" onclick = "pushListProClickMsg('2601010087401')">
								<img alt="${p.subTitle}" src="img/productSingle/${p.firstProductImage.id}.jpg" href="img/productSingle/${p.firstProductImage.id}.jpg"/>
							</a>
						</p>
						<!--这里放商品的名字-->
						<p class="p-name">
							<a target="_blank" href="productDetail?pid=${p.id}" title="${p.name}" onclick = "pushListProClickMsg('2601010087401')">
								<span>${p.name}</span>
								<span class="red"></span>
							</a>
						</p>
						<!--这里放商品的价格-->
						<p class="p-price"><b>${p.promotePrice}</b></p>
						<div class="p-button clearfix">
							<table colspan="0" border="0" rowspan="0">
								<tbody>
									<tr>
									<!--这里跳转到商品详情界面-->
									<td><a href="http://localhost:8888/huawei/productDetail?pid=${p.id}" target="_blank"  class="p-button-an"><span>参加抢购</span></a></td>
									<!--这里放库存数量-->
									<td><label class="p-button-score"><span>库存:&nbsp;${p.stock} </span></a></td>
									</tr>
								</tbody>
							</table>
						</div>
						
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 20140727-商品列表-end -->
		<!-- 分页-start -->
		<%--<div id="list-pager-36" class="pager">--%>
					<%--<input id= "pageTotal" value="3" type='hidden'>--%>
				    <%--<ul id="page_ul">--%>
						<%--<li class="pgNext link first">|&lt;</li>--%>
						<%--<!--这里换页（前）-->--%>
						<%--<li class="pgNext link pre">&lt;</li>--%>
						<%----%>
							    <%--<a id="page_1" href='/list-36-1' title="第1页" >--%>
									<%--<li class="page-number link">1</li>									--%>
								<%--</a>--%>
							    <%--<a id="page_2" href='/list-36-2' title="第2页" >--%>
									<%--<li class="page-number link">2</li>									--%>
								<%--</a>--%>
							    <%--<a id="page_3" href='/list-36-3' title="第3页" >--%>
									<%--<li class="page-number link">3</li>									--%>
								<%--</a>--%>
						<%--<!--这里换页（后）-->--%>
						<%--<li class="pgNext link next">&gt;</li>--%>
						<%--<li class="pgNext link last">&gt;|</li>--%>
						<%--<li class="text quickPager"><select id="pageChecked"><option value="1" selected>1</option><option value="2">2</option></select></li>--%>
					<%--</ul>--%>
	    <%--</div>--%>
    </div><!-- 20140726-频道-列表-end -->

	   <%--图片放大--%>

	</div>

	<%--尾部--%>
	<jsp:include page="bottom.jsp"/>

 	</body>
</html>