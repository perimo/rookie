<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--정보수정에 필요한 코드 시작=================================================================================-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<!--정보수정에 필요한 코드 끝   =================================================================================-->

<!--관리자 로그에 필요한 코드 시작=================================================================================-->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<link href="../common/main.css" rel="stylesheet" />
<link href="../common/css/custom.css" rel="stylesheet" />
<!--관리자 로그에 필요한 코드 끝   =================================================================================-->

<title>2RP PROGRAM</title>

<script type="text/javascript">
	function DaumPostcode() {
		daum.postcode.load(function () {
			//load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
			new daum.Postcode({
				oncomplete: function (data) {
					alert(data);
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
					var roadAddr = data.roadAddress;
					alert("roadAddr: " + roadAddr);
					$("#i_postcode").val(data.zonecode);
					$("#i_address").val(roadAddr);
					//document.getElementbyId('institutuionPostcode').value = data.zonecode;
					//document.getElementbyId('institutuionAddress').value = roadAddr;
				},
			}).open();
		});
	}
</script>
</head>
<body class="sb-nav-fixed">
	<nav id="topNav"></nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav"></div>
		<div id="layoutSidenav_content">
			<main id="input_div">
				<div id="frame_div" style="border: 1px solid black;">
					<div id="page_title" style="border: 1px solid red; margin: 10px 30px;">
						<h2>정보수정</h2>
					</div>
					<div id="page_contents" class="container" style="border: 1px solid yellow; margin: 50px 50px;">
						<!-- 컨텐츠 들어갈내용 시작-->
						
						<div class="row">
							<div class="col-sm-6">
								<table class="table table-boardered">
									<tr>
										<th>사원번호</th>
										<td><input id="empNo" type="text" class="form-control" name="empNo" placeholder="사원번호를 입력하세요."></td>
									</tr>
									<tr>
										<th>사원명</th>
										<td><input id="empName" type="text" class="form-control" name="empName"></td>
									</tr>
									<tr>
										<th>패스워드</th>
										<td><input id="empPw" type="password" class="form-control" name="empPw"></td>
										<td>
											<button data-toggle="modal" class="btn btn-link" data-target="#intro">변경</button>
											<div id="intro" class="modal fade" role="dialog" aria-labelledby="introHeader" aria-hidden="true" tabindex="-1">
												<div class="modal-dialog">
													<div id="modal" class="modal-content" style="padding: 40px; margin: 40px;">
														<div class="form-group">
															<label for="exampleInputEmail1">이전 비밀번호</label> 
															<input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="pwHelp" width="50px"> 
															<small id="pwlHelp" class="form-text text-muted">비밀번호가 생각나지 않으면 인사부로 문의하세요...</small>
														</div>
														<div class="form-group">
															<label for="exampleInputPassword1">새 비밀번호</label> 
															<input type="password" class="form-control" id="exampleInputPassword1" width="100px">
														</div>
														<div class="form-group">
															<label for="exampleInputPassword2">비밀번호 확인</label> 
															<input type="password" class="form-control" id="exampleInputPassword2" width="100px">
														</div>
														<div class="form-group form-check">
															<input type="checkbox" class="form-check-input" id="exampleCheck1"> 
															<label class="form-check-label" for="exampleCheck1">Check me out</label>
														</div>
														<button type="submit" class="btn btn-primary">저장</button>
														<button type="reset" class="btn btn-default" data-dismiss="modal">닫기</button>
													</div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>주민번호</th>
										<td><input id="empJumin" type="text" class="form-control" name="empJumin"></td>
									</tr>
									<tr>
										<th>사진</th>
										<td><input id="empPhoto" type="file" class="form-control" name="empPhoto"></td>
									</tr>
									<tr>
										<th>핸드폰</th>
										<td><input id="empTel" type="tel" class="form-control" name="empTel"></td>
									</tr>
									<tr>
										<th>이메일</th>
										<td><input id="empEmail" type="email" class="form-control" name="empEmail"></td>
									</tr>
									<tr>
										<th>부서명</th>
										<td>
											<select id="deptName" name="deptName" class="form-control">
												<option value="영업부">영업부</option>
												<option value="개발부">개발부</option>
												<option value="총무부">총무부</option>
												<option value="인사부">인사부</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>부서번호</th>
										<td><input id="deptNo" type="text" class="form-control" name="deptNo"></td>
									</tr>
								</table>
							</div>

							<div class="col-sm-6">
								<table class="table table-boardered">
									<tr>
										<th>내선번호</th>
										<td><input id="deptTel" type="tel" class="form-control" name="deptTel"></td>
									</tr>
									<tr>
										<th>직급</th>
										<td><input id="empLevel" type="text" class="form-control" name="empLevel"></td>
									</tr>
									<tr>
										<th>연봉</th>
										<td><input id="empSal" type="text" class="form-control" name="empSal"></td>
									</tr>
									<tr>
										<th>성별</th>
										<td>
											<select id="empGender" name="empGender" class="form-control">
												<option value="남성">남성</option>
												<option value="여성">여성</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>입사일자</th>
										<td><input id="empStartdate" type="date" class="form-control" name="empStartDate"></td>
									</tr>
									<tr>
										<th>퇴사일자</th>
										<td><input id="empEndDate" type="date" class="form-control" name="empEndDate"></td>
									</tr>
									<tr>
										<th>근무상태</th>
										<td>
											<select id="deptState" name="deptState" class="form-control">
												<option value="재직">재직</option>
												<option value="파견">파견</option>
												<option value="퇴사">퇴사</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>은행</th>
										<td><input id="empBank" type="text" class="form-control" name="empBank"></td>
									</tr>

									<tr>
										<th>계좌번호</th>
										<td><input id="empBankNum" type="text" class="form-control" name="empBankNum"></td>
									</tr>
								</table>
							</div>

							<!-- 주소 검색 부분 시작 ================================================================================== -->
							<div id="postSearch" class="col-sm-12" align="left">
								<table class="table table-boardered">
									<tr>
										<th>우편번호</th>
										<td><input id="i_postcode" type="text" class="form-control" name="i_postcode" align="left"></td>
										<td><input type="button" class="btn btn-link" onclick="DaumPostcode()" value="주소검색" /></td>
									</tr>
									<tr>
										<th>주소</th>
										<td><input id="i_address" type="text" class="form-control" name="i_address"></td>
									</tr>
									<tr>
										<th>상세주소</th>
										<td><input id="i_addressDesc" type="text" class="form-control" name="i_addressDesc" placeholder="상세 주소를 입력하세요..."></td>
									</tr>
								</table>
							</div>
							<!-- 주소 검색 부분 끝 =================================================================================== -->

						</div>

						<div class="container" align="right">
							<tr>
								<td colspan="2">
									<button type="button" class="btn btn-info" style="border: 3px solid white; border-radius: 10px;" onclick="main()">저장</button>
									<button type="button" class="btn btn-info" style="border: 3px solid white; border-radius: 10px;" onclick="main()">닫기</button>
								<!--<input type="submit" class="btn btn-primary" value="저장" onclick="main()">  
								    <input type="reset" class="btn btn-danger" value="닫기" onclick="main()"> -->
								</td>
							</tr>
						</div>
						
						<!-- 컨텐츠 들어갈내용 끝   -->
					</div>
				</div>
			</main>
		</div>
	</div>
	<!-- 슬라이드바 사용할때 필요 -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<!-- 탑메뉴 사용 -->
	<script src="../common/js/topNav.js"></script>
	<!-- 사이드 메뉴 사용 -->
	<script src="../common//js/sideNav.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="../common/scripts.js"></script>
	<!-- 버거 메뉴 활성화 -->
</body>
</html>
