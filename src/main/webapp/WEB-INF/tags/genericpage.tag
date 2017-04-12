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
								<li class="rmItem " style="z-index: 0;"><a
									href="" class="rmLink rmRootLink"> <span
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
								<li class="rmItem "><a
									class="rmLink rmRootLink"> <span class="rmText">Program</span>
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
			<div class="col-md-4" style="">
				<div id="pnRightDisplay"
					style="padding: 0px 0px 0px 6px; width: 300px; float: left">
					<div id='ctl06_portlet_b633be64-8363-4e53-9952-6acf34d3e9e9'
						style="float: left;">
						<div>
							<!-- 
							<style type="text/css">
</style> -->
							<div class="thongbao_phong">
								<div class="topictb_phong_blue">
									<h3>Latest news</h3>
									<a class="wobble-horizontal"
										href="indexc059.html?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2">
										<img src="Resources/ImagesPortal/PhongBan/arrow_all_phong.png">
									</a>
								</div>
								<div class="listtb_phong">
									<ul>


										<li><a
											href="index52be.html?ArticleId=3af2fa01-2645-4516-a65a-67bfec768e13">
												<p>Create Date 09/03/2017</p> SPECIAL SESSION 02 FOR
												ICSSE2017: FUZZY SYSTEMS AND ITS APPLICATIONS
										</a></li>
									</ul>
								</div>
								<!--end listtb_phong-->
							</div>

						</div>
					</div>
					<div id='ctl06_portlet_9d945843-6c22-4daf-9b88-835da3891673'
						style="float: left">
						<div>
							<table>
								<tbody>
									<tr>
										<td
											style="text-align: left; width: 350px; height: 40px; vertical-align: middle; background-color: #ff0000;">&nbsp;<span
											style="font-size: 20px; color: #ffff00;"><strong>IMPORTANT
													DEADLINES</strong></span></td>
									</tr>
								</tbody>
							</table>
							<p style="text-align: justify;">
								<span style="font-size: 12px; color: #002060;"><strong><br />
								</strong></span>
							</p>
							<div style="text-align: center;">
								<strong><strong style="text-align: left;"><span
										style="font-size: 16px;"><span
											style="text-decoration: line-through;">March 7, 2017</span><br />
											<strong><span style="color: #c00000;">Extended
													untill March 19, 2017</span></strong><br /> </span></strong></strong>
							</div>
							<span style="font-size: 16px; color: #002060;"><strong>
							</strong> </span>
							<div style="text-align: center;">
								<span style="font-size: 16px; color: #002060;"><span
									style="text-align: left; font-size: 16px;">2-Pages
										&nbsp;Extended Abstract&nbsp;</span><span style="font-size: 16px;">Submission</span></span>
							</div>

						</div>
					</div>
					<div id='ctl06_portlet_553574d9-9245-4da8-a214-baf51898689a'
						style="float: left;">
						<div>
							<table>
								<tbody>
									<tr>
										<td
											style="width: 350px; height: 40px; background-color: #92d050;"><strong><span><span
													style="font-size: 20px; color: #c00000;">SPECIAL
														SESSION</span><br /> </span></strong></td>
									</tr>
								</tbody>
							</table>
							<span
								style="font-size: 10.5pt; letter-spacing: 0.85pt; font-family: &amp; amp;"><strong
								style="font-weight: bold; color: #002060; font-family: &amp; amp; amp; amp; amp; quot; times new roman&amp;amp; amp; amp; amp; quot; , serif; font-size: 14px; letter-spacing: 1.13333px;"><strong><br />
										<a
										href="https://easychair.org/conferences/?conf=icsse2017specialsess"
										target="_blank">SPECIAL SESSION SUBMISSION LINK</a>&nbsp;</strong></strong><br />
								<span style="font-size: 14px;"><br />
									<div style="text-align: center;">
										<strong
											style="letter-spacing: 0.85pt; background-color: #ffff00;"><span
											style="color: #002060;"><strong
												style="letter-spacing: 1.13333px;"><strong>SPECIAL
														SESSION&nbsp;</strong></strong>01</span></strong>
									</div> <strong>
										<div style="text-align: center;">
											<strong style="letter-spacing: 0.85pt;"><span
												style="background-color: #ffff00; color: #002060;">INTELLIGENT
													HEALTHCARE SYSTEMS</span></strong>
										</div>
								</strong></span>
								<div
									style="font-weight: bold; color: #002060; text-align: center;">
									<span style="font-size: 10.5pt; letter-spacing: 0.85pt;"><a
										href="Resources/Docs/SubDomain/icsse2017/SS_cfp_Huang.pdf">CALL
											FOR PAPERS</a></span>
								</div> <br />
								<div style="text-align: center;">
									<strong
										style="font-size: 10.5pt; letter-spacing: 0.85pt; margin: 0px; padding: 0px;"><span
										style="margin: 0px; padding: 0px; font-size: 20px;"><strong
											style="margin: 0px; padding: 0px;"><span
												style="margin: 0px; padding: 0px; font-size: 14px; background-color: #ffff00; color: #002060;"><strong
													style="font-family: &amp; amp; amp; amp; amp; quot; times new roman&amp;amp; amp; amp; amp; quot; , serif; font-size: 14px; letter-spacing: 0.85pt; text-align: -webkit-center; background-color: #ffff00;"><span
														style="color: #002060;"><strong
															style="letter-spacing: 1.13333px;"><strong>SPECIAL
																	SESSION&nbsp;</strong></strong></span></strong>02<br /> FUZZY SYSTEMS &amp; ITS
													APPLICATIONS</span></strong></span></strong>
								</div> <strong style="margin: 0px; padding: 0px; font-size: 14px;">
									<div style="text-align: center;">
										<strong
											style="letter-spacing: 0.85pt; margin: 0px; padding: 0px;"><a
											href="Resources/Docs/SubDomain/icsse2017/SS02%20-%20call4pp.pdf"
											style="margin: 0px; padding: 0px; text-decoration: none;">CALL
												FOR PAPER</a></strong>
									</div>
							</strong> <br /> </span>

						</div>
					</div>
					<div id='ctl06_portlet_78439b67-a318-4ced-ac29-33d02da2a0fb'
						style="float: left;">
						<div>
							<table>
								<tbody>
									<tr>
										<td
											style="text-align: left; width: 350px; vertical-align: middle; height: 40px; background-color: #002060;">&nbsp;<span
											style="font-size: 20px; color: #ffff00;"><strong>KEY
													LINKS</strong></span></td>
									</tr>
								</tbody>
							</table>
							<br /> <span style="color: #002060;"><span
								style="font-size: 14px;"><a
									href="https://easychair.org/conferences/?conf=icsse2017"
									target="_blank"><strong>EASYCHAIR SUBMISSION SITE</strong></a></span><br />
								<span style="font-size: 14px;"><a
									href="Resources/Docs/SubDomain/icsse2017/ieeeconf_letter.doc"><br />
										<strong> PAPER FORMAT TEMPLATE DOWNLOAD</strong></a>&nbsp;<br />
							</span></span><span style="font-size: 14px;"><br /> <strong><strong
									style="font-size: 14px;"></strong><strong
									style="font-size: 14px;"></strong><a
									href="Resources/Docs/SubDomain/icsse2017/Instruction%20easychair_ICSSE2017.docx"><strong
										style="font-size: 14px;">EASYCHAIR&nbsp;</strong>SUBMISSION
										INSTRUCTION</a></strong></span>

						</div>
					</div>
				</div>
			</div>
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
