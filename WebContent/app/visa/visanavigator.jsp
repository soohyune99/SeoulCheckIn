<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/visa/visaNav.css">
<title>비자 내비게이터</title>
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<div class="wrap">
		<div class="entryWarp">
			<div class="img" style="padding-left: 251px; margin-top: -33px;">
				<img
					src="${pageContext.request.contextPath}/assets/images/visa/visaFinal.png"
					style="height: 390px; width: 1013px; padding-top: 42px;" alt="">
			</div>
			<div class="entryContainer">
				<div class="searchBar">
					<div class="searchbarContainer">
						<form id="IN_CONT" action="">
							<div class="searchBox"
								style="display: flex; justify-content: space-evenly; align-items: center;">
								<div class="categorySelect">
									<div class="selectGroup">
										<select id="IN_CONT_CD" name="IN_CONT_CD"
											class="nav_search02 visa_sel">
											<option value="">대륙</option>
											<option value="1">Asia</option>
											<option value="2">Americas</option>
											<option value="3">Europe</option>
											<option value="4">Oceania</option>
											<option value="5">Africa</option>
											<option value="6">ETC</option>
										</select>
										<svg width="20" height="20" viewBox="0 0 24 24"
											class="selectIcon">
                                            <path fill="currentColor"
												d="M16 9.25a.75.75 0 01.586 1.218l-3.986 5a.75.75 0 01-1.17.002l-4.015-5A.75.75 0 018 9.25h8z"></path>
                                        </svg>
									</div>
								</div>
								<div class="categorySelect">
									<div class="selectGroup">
										<select name="IN_NAT_CD" id="IN_NAT_CD"
											class="nav_search04 visa_sel">
											<option value="">국가/지역</option>
											<option value="101">AFGHANISTAN</option>
											<option value="301">ALBANIA</option>
											<option value="502">ALGERIA</option>
											<option value="302">ANDORRA</option>
											<option value="503">ANGOLA</option>
											<option value="201">ANTIGUA-BARBUDA</option>
											<option value="202">ARGENTINA</option>
											<option value="304">ARMENIA</option>
											<option value="404">AUSTRALIA</option>
											<option value="303">AUSTRIA</option>
											<option value="305">AZERBAIJAN</option>
											<option value="205">BAHAMAS</option>
											<option value="104">BAHRAIN</option>
											<option value="105">BANGLADESH</option>
											<option value="206">BARBADOS</option>
											<option value="308">BELARUS</option>
											<option value="306">BELGIUM</option>
											<option value="207">BELIZE</option>
											<option value="520">BENIN</option>
											<option value="210">BERMUDA</option>
											<option value="106">BHUTAN</option>
											<option value="208">BOLIVIA</option>
											<option value="309">BOSNIA-HERCEGOVINA</option>
											<option value="506">BOTSWANA</option>
											<option value="209">BRAZIL</option>
											<option value="315">BRITISH SUBJECT</option>
											<option value="107">BRUNEI</option>
											<option value="307">BULGARIA</option>
											<option value="589">BURKINA FASO</option>
											<option value="507">BURUNDI</option>
											<option value="110">CAMBODIA</option>
											<option value="510">CAMEROON</option>
											<option value="213">CANADA</option>
											<option value="511">CANARY IS.</option>
											<option value="512">CAPE VERDE</option>
											<option value="513">CENTRAL AFRICA</option>
											<option value="514">CHAD</option>
											<option value="214">CHILE</option>
											<option value="112">CHINA P. R.</option>
											<option value="120">CHINA P. R.(HONG KONG)</option>
											<option value="142">CHINA P. R.(MACAO)</option>
											<option value="113">CHINA(TAIWAN)</option>
											<option value="215">COLOMBIA</option>
											<option value="515">COMOROS</option>
											<option value="517">CONGO D R</option>
											<option value="516">CONGO P. R.</option>
											<option value="412">COOK IS.</option>
											<option value="216">COSTA RICA</option>
											<option value="537">COTE D'IVOIRE</option>
											<option value="391">CROATIA</option>
											<option value="217">CUBA</option>
											<option value="114">CYPRUS</option>
											<option value="310">CZECH</option>
											<option value="313">DENMARK</option>
											<option value="521">DJIBOUTI</option>
											<option value="220">DOMINICA</option>
											<option value="221">DOMINICAN REP.</option>
											<option value="156">EAST-TIMOR</option>
											<option value="224">ECUADOR</option>
											<option value="525">EGYPT</option>
											<option value="225">EL SALVADOR</option>
											<option value="526">EQUATOR-GUINEA</option>
											<option value="528">ERITREA</option>
											<option value="312">ESTONIA</option>
											<option value="579">ESWATINI</option>
											<option value="527">ETHIOPIA</option>
											<option value="418">FIJI</option>
											<option value="320">FINLAND</option>
											<option value="321">FRANCE</option>
											<option value="530">GABON</option>
											<option value="531">GAMBIA</option>
											<option value="323">GEORGIA</option>
											<option value="324">GERMANY F.R</option>
											<option value="532">GHANA</option>
											<option value="326">GREECE</option>
											<option value="328">GREENLAND</option>
											<option value="229">GRENADA</option>
											<option value="423">GUAM</option>
											<option value="231">GUATEMALA</option>
											<option value="533">GUINEA</option>
											<option value="534">GUINEA BISSAU</option>
											<option value="232">GUYANA</option>
											<option value="235">HAITI</option>
											<option value="390">HOLY SEE</option>
											<option value="236">HONDURAS</option>
											<option value="121">HONG KONG D.I.</option>
											<option value="329">HUNGARY</option>
											<option value="333">ICELAND</option>
											<option value="124">INDIA</option>
											<option value="125">INDONESIA</option>
											<option value="126">IRAN</option>
											<option value="127">IRAQ</option>
											<option value="334">IRELAND</option>
											<option value="128">ISRAEL</option>
											<option value="335">ITALY</option>
											<option value="240">JAMAICA</option>
											<option value="130">JAPAN</option>
											<option value="131">JORDAN</option>
											<option value="133">KAZAKHSTAN</option>
											<option value="540">KENYA</option>
											<option value="429">KIRIBATI</option>
											<option value="135">KUWAIT</option>
											<option value="134">KYRGYZ REPUBLIC</option>
											<option value="138">LAOS</option>
											<option value="339">LATVIA</option>
											<option value="139">LEBANON</option>
											<option value="542">LESOTHO</option>
											<option value="543">LIBERIA</option>
											<option value="544">LIBYA</option>
											<option value="340">LIECHTENSTEIN</option>
											<option value="342">LITHUANIA</option>
											<option value="341">LUXEMBOURG</option>
											<option value="343">MACEDONIA</option>
											<option value="550">MADAGASCAR</option>
											<option value="551">MALAWI</option>
											<option value="143">MALAYSIA</option>
											<option value="144">MALDIVES</option>
											<option value="552">MALI</option>
											<option value="344">MALTA</option>
											<option value="437">MARSHALL ISLANDS</option>
											<option value="553">MAURITANIA</option>
											<option value="554">MAURITIUS</option>
											<option value="248">MEXICO</option>
											<option value="435">MICRONESIA</option>
											<option value="346">MOLDOVA</option>
											<option value="345">MONACO</option>
											<option value="145">MONGOLIA</option>
											<option value="347">MONTENEGRO</option>
											<option value="555">MOROCCO</option>
											<option value="556">MOZAMBIQUE</option>
											<option value="108">MYANMAR</option>
											<option value="560">NAMIBIA</option>
											<option value="441">NAURU</option>
											<option value="148">NEPAL</option>
											<option value="350">NETHERLANDS</option>
											<option value="443">NEW CALEDONIA</option>
											<option value="446">NEW ZEALAND</option>
											<option value="252">NICARAGUA</option>
											<option value="561">NIGER</option>
											<option value="562">NIGERIA</option>
											<option value="447">NIUE</option>
											<option value="352">NORWAY</option>
											<option value="150">OMAN</option>
											<option value="153">PAKISTAN</option>
											<option value="451">PALAU</option>
											<option value="154">PALESTINE</option>
											<option value="255">PANAMA</option>
											<option value="452">PAPUA NEW GUINEA</option>
											<option value="256">PARAGUAY</option>
											<option value="257">PERU</option>
											<option value="155">PHILIPPINES</option>
											<option value="360">POLAND</option>
											<option value="361">PORTUGAL</option>
											<option value="258">PUERTO RICO</option>
											<option value="159">QATAR</option>
											<option value="337">REPUBLIC OF KOSOVO</option>
											<option value="367">REPUBLIC OF SERBIA</option>
											<option value="580">REPUBLIC OF SOUTH SUDAN</option>
											<option value="365">ROMANIA</option>
											<option value="366">RUSSIA</option>
											<option value="566">RWANDA</option>
											<option value="461">SAMOA</option>
											<option value="371">SAN MARINO</option>
											<option value="571">SAOTOME-PRINCIPE</option>
											<option value="162">SAUDI ARABIA</option>
											<option value="572">SENEGAL</option>
											<option value="573">SEYCHELLES</option>
											<option value="574">SIERRA LEONE</option>
											<option value="164">SINGAPORE</option>
											<option value="368">SLOVAK</option>
											<option value="370">SLOVENIA</option>
											<option value="463">SOLOMON IS.</option>
											<option value="575">SOMALIA</option>
											<option value="576">SOUTH AFRICA</option>
											<option value="372">SPAIN</option>
											<option value="111">SRI LANKA</option>
											<option value="262">ST. KITTS-NEVIS</option>
											<option value="263">ST. LUCIA</option>
											<option value="264">ST. VINCENT</option>
											<option value="578">SUDAN</option>
											<option value="265">SURINAM</option>
											<option value="375">SVALBARD AND JAN MAYEN I.</option>
											<option value="373">SWEDEN</option>
											<option value="374">SWITZERLAND</option>
											<option value="165">SYRIA</option>
											<option value="169">TAJIKISTAN</option>
											<option value="583">TANZANIA</option>
											<option value="170">THAILAND</option>
											<option value="584">TOGO</option>
											<option value="473">TONGA</option>
											<option value="268">TRINIDAD-TOBAGO</option>
											<option value="585">TUNISIA</option>
											<option value="171">TURKIYE</option>
											<option value="172">TURKMENISTAN</option>
											<option value="475">TUVALU</option>
											<option value="180">U.A.E</option>
											<option value="588">UGANDA</option>
											<option value="378">UKRAINE</option>
											<option value="316">UNITED KINGDOM</option>
											<option value="275">UNITED STATES</option>
											<option value="274">URUGUAY</option>
											<option value="181">UZBEKISTAN</option>
											<option value="485">VANUATU</option>
											<option value="280">VENEZUELA</option>
											<option value="185">VIETNAM</option>
											<option value="191">YEMEN</option>
											<option value="595">ZAMBIA</option>
											<option value="565">ZIMBABWE</option>
										</select>
										<svg width="20" height="20" viewBox="0 0 24 24"
											class="selectIcon">
                                            <path fill="currentColor"
												d="M16 9.25a.75.75 0 01.586 1.218l-3.986 5a.75.75 0 01-1.17.002l-4.015-5A.75.75 0 018 9.25h8z"></path>
                                        </svg>
									</div>
								</div>
								<div class="categorySelect">
									<div class="selectGroup" data-experience="0">
										<select id="IN_REP_ENTRY_PURP_CD" name="IN_REP_ENTRY_PURP_CD"
											class="nav_search06 visa_sel">
											<option value="">입국목적</option>
											<option value="VC001">관광 등 단기방문</option>
											<option value="VC002">치료요양</option>
											<option value="VC003">유학/어학연수</option>
											<option value="VC004">전문직 취업</option>
											<option value="VC005">주재</option>
											<option value="VC006">취재/종교</option>
											<option value="VC007">투자</option>
											<option value="VC008">무역경영</option>
											<option value="VC009">재외동포</option>
											<option value="VC010">방문취업</option>
											<option value="VC011">가족방문/동거</option>
											<option value="VC012">결혼이민</option>
											<option value="VC013">연수</option>
											<option value="VC014">비전문직 취업</option>
											<option value="VC015">외교, 공무</option>
										</select>
										<svg width="20" height="20" viewBox="0 0 24 24"
											class="selectIcon">
                                            <path fill="currentColor"
												d="M16 9.25a.75.75 0 01.586 1.218l-3.986 5a.75.75 0 01-1.17.002l-4.015-5A.75.75 0 018 9.25h8z"></path>
                                        </svg>
									</div>
								</div>
								<div class="categorySelect">
									<div class="selectGroup">
										<select id="IN_SOJ_DUR" name="IN_SOJ_DUR"
											class="nav_search08 visa_sel">
											<option value="">체류기간</option>
											<option value="90UNDER">90일이하</option>
											<option value="91OVER">91일이상</option>
											<option value="FOREVER">영주</option>
										</select>
										<svg width="20" height="20" viewBox="0 0 24 24"
											class="selectIcon">
                                            <path fill="currentColor"
												d="M16 9.25a.75.75 0 01.586 1.218l-3.986 5a.75.75 0 01-1.17.002l-4.015-5A.75.75 0 018 9.25h8z"></path>
                                        </svg>
									</div>
								</div>

								<div class="categorySelect">
									<div
										class="NotificationManager_NotificationManager_wrapper__JmH6R">
										<button type="button"
											class="NotificationManager_NotificationManager__X1DXD is-desktop"
											data-attribute-id="event__keywordNoti"
											style="align-items: center; justify-content: center; position: relative; height: 40px; padding-right: 20px; padding-left: 20px; font-weight: bold; border-radius: 9999px; background-color: #36f; margin-left: 15px; white-space: nowrap; color: #fff;">
											<span class="">알맞은 비자를 찾아보세요</span>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 검색 결과  -->
	<div class="navBody">
		<div class="navTable">
			<div class="navTitle">검색 결과</div>
			<div class="navSubTitle">해당되는 체류자격을 클릭하면 비자 신청에 관한 상세정보를 볼 수
				있습니다.</div>

			<div class="navResult">
				<table id="result1" class="resultTable">
					<colgroup>
						<col style="width: 25%">
						<col style="width: auto">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">체류자격</th>
							<th scope="col" class="non_bg">신청대상 또는 활동범위</th>
						</tr>
					</thead>
					<tbody id="visaResultTable">
						<!-- 내용 추가 부분 -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	$('.NotificationManager_NotificationManager__X1DXD').on('click',
			function(e) {
				e.preventDefault();
				console.log("들어옴1");
				console.log($('#IN_CONT_CD').val()); // 대륙 
				console.log($('#IN_NAT_CD').val()); // 국가
				console.log($('#IN_REP_ENTRY_PURP_CD').val()); //목적
				console.log($('#IN_SOJ_DUR').val()); //체류기간

				let IN_CONT_CD = $('#IN_CONT_CD').val();
				let IN_NAT_CD = $('#IN_NAT_CD').val();
				let IN_REP_ENTRY_PURP_CD = $('#IN_REP_ENTRY_PURP_CD').val();
				let IN_SOJ_DUR = $('#IN_SOJ_DUR').val();

				if (!IN_CONT_CD) {
					alert("선택된 항목이 없습니다.");
					$('#IN_CONT_CD').focus();
					return;
				}
				if (!IN_NAT_CD) {
					alert("선택된 항목이 없습니다.");
					$('#IN_NAT_CD').focus();
					return;
				}
				if (!IN_REP_ENTRY_PURP_CD) {
					alert("선택된 항목이 없습니다.");
					$('#IN_REP_ENTRY_PURP_CD').focus();
					return;
				}
				if (!IN_SOJ_DUR) {
					alert("선택된 항목이 없습니다.");
					$('#IN_SOJ_DUR').focus();
					return;
				}

				$.ajax({
					url : "/visa/visanavigator.vs",
					data : {
						navigatorContinent : IN_CONT_CD,
						navigatorNation : IN_NAT_CD,
						navigatorPurpose : IN_REP_ENTRY_PURP_CD,
						navigatorPeriod : IN_SOJ_DUR
					},
					dataType: "json",
					success : function(visas) {
						console.log(visas)
						let text = "";
							visas.forEach(visa => {
							 	text += `<tr>`;
								text += `<td class="resonName">`;
								text += `<a href="#this" name="sojQualNm" class="che_tit">`;
								text += `<span class="nameBox">`+ visa.visaName +`</span>`;
								text += `</a>`;
								text += `</td>`;
								text += `<td class="resonDetail">`;
								text += visa.visaContent + `</td>`;
							 	text += `</tr>`;
							});
						text += `</thead>`;
						$("#visaResultTable").html(text);
							
						/* if(visas.length>0){
						}else{
							console.log("들어올까말까?????????");
							visas.forEach(visa => {
								
							 	text += `<tr>`;
								text += `<td class="resonName">`;
								text += `<a href="#this" name="sojQualNm" class="che_tit">`;
								text += `<span class="nameBox" style="display:none">`+ visa.visaName +`</span>`;
								text += `</a>`;
								text += `</td>`;
								text += `<td class="resonDetail">`;
								text += `"조회된 데이터가 없습니다"` + `</td>`;
							 	text += `</tr>`;
							});
						text += `</thead>`;
						$("#visaResultTable").html(text);
						} */
					}
				}); 
			});
</script>
</html>