<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
	include_once(G5_THEME_MOBILE_PATH.'/head.php');
	return;
}

include_once(G5_THEME_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<!-- 상단 시작 { -->
<div id="hd">
	<h1 id="hd_h1"><?php echo $g5['title'] ?></h1>

	<div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

	<?php
	if(defined('_INDEX_')) { // index에서만 실행
		include G5_BBS_PATH.'/newwin.inc.php'; // 팝업레이어
	}
	?>

	<div id="hd_wrapper">

		<div id="logo">
			<a href="<?php echo G5_URL ?>"><img src="http://reviewplace.co.kr/upload/happy_config/info_logo.png" alt="리뷰플레이스" title="리뷰플레이스" width="139px"></a>
		</div>

		<div id="text_size">
			<!-- font_resize('엘리먼트id', '제거할 class', '추가할 class'); -->
			<button id="size_down" onclick="font_resize('container', 'ts_up ts_up2', '');"><img src="<?php echo G5_URL; ?>/img/ts01.gif" alt="기본"></button>
			<button id="size_def" onclick="font_resize('container', 'ts_up ts_up2', 'ts_up');"><img src="<?php echo G5_URL; ?>/img/ts02.gif" alt="크게"></button>
			<button id="size_up" onclick="font_resize('container', 'ts_up ts_up2', 'ts_up2');"><img src="<?php echo G5_URL; ?>/img/ts03.gif" alt="더크게"></button>
		</div>

<div style="position:absolute; padding-left:320px; top:38px;"> 
<tr><td>

<?php 
if ($member[mb_id]=='sonhoja')
// 옵션 ... 표시(0=제목+본문,1=제목,2=본문), 날짜(0=표시,1=숨김), 자료없음(0=표시,1=숨김), 링크(0=있음,1=없음)
//echo latest("theme/hp5_onenotice","게시판명",1,1,1,"전체폭,표시,날짜,자료없음,링크");
echo latest("hp5_onenotice","delete",1,20);
?>
<?php 
if ($member[mb_id]=='qiqipipi')
// 옵션 ... 표시(0=제목+본문,1=제목,2=본문), 날짜(0=표시,1=숨김), 자료없음(0=표시,1=숨김), 링크(0=있음,1=없음)
//echo latest("theme/hp5_onenotice","게시판명",1,1,1,"전체폭,표시,날짜,자료없음,링크");
echo latest("hp5_onenotice","delete",1,20);
?>
<?php 
if ($member[mb_id]=='qmanse')
// 옵션 ... 표시(0=제목+본문,1=제목,2=본문), 날짜(0=표시,1=숨김), 자료없음(0=표시,1=숨김), 링크(0=있음,1=없음)
//echo latest("theme/hp5_onenotice","게시판명",1,1,1,"전체폭,표시,날짜,자료없음,링크");
echo latest("hp5_onenotice","delete",1,20);
?>
</td></tr>

</div>



		<ul id="tnb">
			<?php if ($is_member) {  ?>
			<?php if ($is_admin) {  ?>
			<li><a href="<?php echo G5_ADMIN_URL ?>"><b>관리자</b></a></li>
			<?php }  ?>
			<li><a href="<?php echo G5_BBS_URL ?>/member_confirm.php?url=<?php echo G5_BBS_URL ?>/register_form.php">정보수정</a></li>
			<li><a href="<?php echo G5_BBS_URL ?>/logout.php">로그아웃</a></li>
			<?php } else {  ?>
			<li><a href="<?php echo G5_BBS_URL ?>/register.php">회원가입</a></li>
			<li><a href="<?php echo G5_BBS_URL ?>/login.php"><b>로그인</b></a></li>
			<?php }  ?>
			<li><a href="<?php echo G5_BBS_URL ?>/current_connect.php">접속자 <?php echo connect('theme/basic'); // 현재 접속자수, 테마의 스킨을 사용하려면 스킨을 theme/basic 과 같이 지정  ?></a></li>
		</ul>
		

	</div>


	<hr>

	<nav id="gnb">
		<h2>메인메뉴</h2>
		<ul id="gnb_1dul">
			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=1team_w" class="gnb_1da" style="background: transparent;">캠페인 등록</a>
			</li>
			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=soojung" class="gnb_1da" style="background: transparent;">캠페인수정</a>
			</li>

			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=donot" class="gnb_1da" style="background: transparent;">캠페인누락</a>
			</li>

			<li class="gnb_1dli">
				<!-- <a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=1team_r" class="gnb_1da" style="background: transparent;">진행중 캠페인</a> -->
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=test" class="gnb_1da" style="background: transparent;">진행중 캠페인</a>
			</li>
			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=1team_e" class="gnb_1da" style="background: transparent;">종료된 캠페인</a>
			</li>
			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=report_k" class="gnb_1da" style="background: transparent;">키워드노출 결과보고서</a>
			</li>
				<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=point" class="gnb_1da" style="background: transparent;">포인트 환급신청관리</a>
			</li>
			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=delete" class="gnb_1da" style="background: transparent;">캠페인 삭제</a>
			</li>

			<li class="gnb_1dli">
				<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=bogo" class="gnb_1da" style="background: transparent;">업무보고</a>
			</li>
			
	
		</ul>
	</nav>
	
</div>
<!-- } 상단 끝 -->

<hr>

<!-- 콘텐츠 시작 { -->
<div id="wrapper">

	<div id="container" style="width:100%">		

  
