<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<html>
<body>
	<link href="/resources/css/bootstrap.css" rel="stylesheet" />
	<link href="/resources/ImagesPortal/PhongBan/main.css" rel="stylesheet" />
	<link href="/resources/Portlets/MenuRad/Menu.Green.css"
		rel="stylesheet" type="text/css">
	<div id="pageheader">
		<div class="container">

			<!-- TOP HEADER -->
			<div class="col-md-12" style="">
				<div class="col-md-8" style="">
					<img
						src="/resources/WELCOME TO ICSSE 2017_files/Banner Hoi nghi quoc te sua.jpg"
						style="width: 100%; height: auto;">
				</div>
				<div class="col-md-4" style="height: 100px;">
					<div id='ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c'
						style="width: 199px; float: right">
						<div>
							<div class="search_phong">
								<input class="bgsearch_phong" id="txtSearchArticle"
									onkeydown="return SearchProcess(event);" type="text" /> <input
									class="btsearch_phong" type="button" />
							</div>
							<div class="link_trang">
								<a href="index.html">http://icsse2017.hcmute.edu.vn</a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- END TOP HEADER -->

			<!-- PICTURE CENTER -->
			<div class="col-md-12" style="height: auto;">
				<div class="slider-wrapper theme-default">
					<div id="slider" class="nivoSlider">
						<img src="/resources/WELCOME TO ICSSE 2017_files/HNQT3.jpg"
							style="width: 100%" title="" />
					</div>
				</div>
			</div>
			<!-- END PICTURE CENTER -->

			<!-- MENU -->
			<div class="col-md-12 text-center">
				<div id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92"
					style="padding: 10px 0px 0px 0px; width: 100%; float: left">
					<div>

						<div
							id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"
							class="RadMenu RadMenu_Green rmSized"
							style="height: 40px; z-index: 1; width: 100%;">
							<ul class="rmRootGroup rmHorizontal">
								<li class="rmItem rmFirst"><a href="<c:url value="/"/>"
									class="rmLink rmRootLink"> <span class="rmText">Home</span>
								</a></li>
								<li class="rmItem " style="z-index: 0;"><a href=""
									class="rmLink rmRootLink"> <span
										class="rmText rmExpandDown">About</span>
								</a>
									<div class="rmSlide"
										style="visibility: visible; height: 103px; width: 139px; display: none; overflow: hidden; left: 0px; top: 40px; z-index: 10;">
										<ul class="rmVertical rmGroup rmLevel1"
											style="display: block; top: -103px; left: 0px; visibility: visible;">
											<li class="rmItem rmFirst"><a
												href="/Default.aspx?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"
												class="rmLink" style="width: 139px;"> <span
													class="rmText">icsse</span>
											</a></li>
											<li class="rmItem "><a
												href="/Default.aspx?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"
												class="rmLink" style="width: 139px;"> <span
													class="rmText">HCMUTE</span>
											</a></li>
											<li class="rmItem rmLast"><a
												href="/Default.aspx?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"
												class="rmLink" style="width: 139px;"> <span
													class="rmText">Committees</span>
											</a></li>
										</ul>
									</div></li>
								<li class="rmItem "><a href="<c:url value="/callpaper"/>"
									class="rmLink rmRootLink"> <span class="rmText">Call
											for papers</span>
								</a></li>
								<li class="rmItem "><a href="<c:url value="/submission"/>"
									class="rmLink rmRootLink"> <span class="rmText">Submission</span>
								</a></li>
								<li class="rmItem "><a href="<c:url value="registation"/>"
									class="rmLink rmRootLink"> <span class="rmText">Registration</span>
								</a></li>
								<li class="rmItem "><a
									href="<c:url value="keynotespeaker"/>"
									class="rmLink rmRootLink"> <span class="rmText">Keynote
											Speakers</span>
								</a></li>
								<li class="rmItem "><a class="rmLink rmRootLink"> <span
										class="rmText">Program</span>
								</a></li>
								<li class="rmItem "><a href="<c:url value="venuehotel"/>"
									class="rmLink rmRootLink"> <span class="rmText">Venue
											&amp; Hotel</span>
								</a></li>
								<li class="rmItem rmLast"><a
									href="<c:url value="contact"/>" class="rmLink rmRootLink">
										<span class="rmText">Contact</span>
								</a></li>


							</ul>
							<input
								id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
								name="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
								type="hidden" autocomplete="off">
						</div>
					</div>
				</div>
			</div>
			<!-- END MENU -->

		</div>

		<!-- BODY -->
		<div id="body" class="container">
			<!-- LEFT BODY -->
			<div class="col-md-8">
				<jsp:doBody />
			</div>

			<!-- SIDE BAR -->
			<div Class="col-md-4" style="">
											${sidebar.content }
						<%--<div class="clearfix" --%><a href="/edit-${sidebar.page_id }"><h4 class="pull-right"></h4></a>
			</div>
						

			<!-- END BODY -->

			<!-- FOOTER -->
			<div id="pagefooter"></div>
			<div class="container">
				<div class="col-md-12"
					style="height: auto; background: url(/resources/ImagesPortal/PhongBan/bgfooter_phong.png) repeat-x;">
					<p>
						<span style="font-size: 14px; color: #ffffff;">2017 IEEE
							International Conference on System Science and Engineering<br />
							<span style="font-size: 14px;">HCMC University of
								Technology and Education</span><br /> Add: No 1 Vo Van Ngan Street,
							Linh Chieu Ward, Thu Duc District, Ho Chi Minh City<br /> Tel:
							(+84.8) 37 221 223 - Ext: 8161 / 8163<br /> E-mail:
							icsse2017@hcmute.edu.vn
						</span>
					</p>
				</div>
			</div>
			<!-- END FOOTER -->
</body>
</html>
