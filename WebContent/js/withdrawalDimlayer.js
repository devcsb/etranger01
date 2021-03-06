$('#withdrawal').click(function(){
    var $href = $(this).attr('href');
    layer_popupWithdrawal($href);
});
function layer_popupWithdrawal(el){

    var $el = $(el);        //레이어의 id를 $el 변수에 저장
    var isDim = $el.prev().hasClass('dimBgWithdrawal');   //dimmed 레이어를 감지하기 위한 boolean 변수

    isDim ? $('.dim-layerWithdrawal').fadeIn() : $el.fadeIn();

    var $elWidth = ~~($el.outerWidth()),
        $elHeight = ~~($el.outerHeight()),
        docWidth = $(document).width(),
        docHeight = $(document).height();

    // 화면의 중앙에 레이어를 띄운다.
    if ($elHeight < docHeight || $elWidth < docWidth) {
        $el.css({
            marginTop: -$elHeight /2,
            marginLeft: -$elWidth/2
        })
    } else {
        $el.css({top: 0, left: 0});
    }

    $el.find('#btnPopUpCloseWithdrawal').click(function(){
        isDim ? $('.dim-layerWithdrawal').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
        return false;
    });

    $('.layerWithdrawal .dimBgWithdrawal').click(function(){
        $('.dim-layerWithdrawal').fadeOut();
        return false;
    });

}