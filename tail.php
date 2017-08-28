<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/tail.php');
    return;
}
?>


  </div>

</div>


<!-- } 콘텐츠 끝 -->

<hr>

<!-- 하단 시작 { -->
<div id="ft">
    <?php echo visit('theme/basic'); // 접속자집계, 테마의 스킨을 사용하려면 스킨을 theme/basic 과 같이 지정 ?>
    <div id="ft_catch"><img src="http://reviewplace.co.kr/upload/happy_config/info_logo.png" alt="리뷰플레이스" title="리뷰플레이스" width="139px"></div>
    <div id="ft_company">
    </div>
</div>

  
<!-- } 하단 끝 -->

<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>



<?php
include_once(G5_THEME_PATH."/tail.sub.php");
?>