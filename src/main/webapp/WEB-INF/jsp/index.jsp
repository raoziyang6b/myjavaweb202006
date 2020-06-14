<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${applicationScope.globalParameter.webName}</title>

    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="img/java.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bs.css"/>

</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container" style="margin-top:10px ;">
    <div class="row" style="height: 850px;">
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 sort" style="width: 17.5%;height: 100%;padding: 0;">
            <div id="sort_header">
                <span>商品分类</span>
            </div>
            <ul id="sort_ul">
                <li class="sort_li">
                    <a href="">特色商品</a>
                    <span class="sort_span">></span>
                </li>
                <c:forEach items="${bookCategories}" var="bookCat">
                    <li class="sort_li">
                        <a href="book/list?cateId=${bookCat.cateId}">${bookCat.name}</a>
                        <span class="sort_span">></span>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12" style="width: 65%;height: 100%;">
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0"
                        class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/lunbo1.jpg" alt="First slide">
                    </div>
                    <div class="item">
                        <img src="img/lunbo2.jpg" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="img/lunbo3.jpg" alt="Third slide">
                    </div>
                    <div class="item">
                        <img src="img/lunbo4.jpg" alt="Third slide">
                    </div>
                    <div class="item">
                        <img src="img/lunbo5.jpg" alt="Third slide">
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="index_product_top">
                <span class="title">新品上架</span>
                <div class="div_hr"></div>
            </div>
            <div class="product_div">
            <ul class="product_ul">
                <c:forEach items="${bookInfos}" begin="0" end="7" var="bookInfo">

                    <li class="product_li">
                        <a href="book/info/${bookInfo.bookId}" class="img" target="_blank">
                            <img src="${bookInfo.imageUrl}"/>
                        </a>
                        <p class="name">
                            <a href="book/info/${bookInfo.bookId}">${bookInfo.name}</a>
                        </p>
                        <p class="author">${bookInfo.author}</p>
                        <p class="price">
                            <span class="rob">￥${bookInfo.price}</span>
                            <span class="oprice">￥${bookInfo.marketPrice}</span>
                        </p>
                    </li>
                </c:forEach>
            </ul>
        </div>
        </div>
        <span class="title">用户推荐</span>
        <div class="product_div">
            <ul class="product_ul">
                <c:forEach items="${bookInfoList}" begin="0" end="7" var="bookInfo">

                    <li class="product_li">
                        <a href="book/info/${bookInfo.bookId}" class="img" target="_blank">
                            <img src="${bookInfo.imageUrl}"/>
                        </a>
                        <p class="name">
                            <a href="book/info/${bookInfo.bookId}">${bookInfo.name}</a>
                        </p>
                        <p class="author">${bookInfo.author}</p>
                        <p class="price">
                            <span class="rob">￥${bookInfo.price}</span>
                            <span class="oprice">￥${bookInfo.marketPrice}</span>
                        </p>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="width: 17.5%;height: 100%; padding: 0;">
            <div class="news">
                <p class="title">商城头条</p>
                <ul>
                    <li><a target="_blank" href="https://news.suning.com/wtoutiao/witem2_5370595422.html?safp=d488778a.homepage1.100230525657.9&safc=article.1.rec_N000005_1_A">如何简单快速提升游戏技术？一般人我不告诉他</a></li>
                    <li><a target="_blank" href="https://news.suning.com/wtoutiao/witem2_7544906134.html?safp=d488778a.homepage1.100230525657.10&safc=article.1.rec_N000005_1_A">孕期洗澡也有讲究，你做对了吗</a></li>
                    <li><a target="_blank" href="https://news.suning.com/wtoutiao/witem2_9587554961.html?safp=d488778a.homepage1.100230525657.11&safc=article.1.rec_N000005_1_A">极物小Biu净水器，净水确实有一套！</a></li>
                    <li><a target="_blank" href="https://news.suning.com/wtoutiao/witem2_1786821713.html?safp=d488778a.homepage1.100230525657.14&safc=article.1.rec_N000005_1_A">在过减速带时踩刹车，真的最毁车吗？</a></li>
                    <li><a target="_blank" href="https://news.suning.com/wtoutiao/witem2_6924336039.html?safp=d488778a.homepage1.100230525657.13&safc=article.1.rec_N000005_1_A">母婴洗衣机——宝宝的衣物有何奥秘？</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>

<jsp:include page="footer.jsp"/>
</body>

</html>