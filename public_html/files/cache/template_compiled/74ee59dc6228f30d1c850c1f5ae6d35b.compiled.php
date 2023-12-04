<?php if(!defined("__XE__"))exit;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_application_form_02','_setting.html') ?>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_application_form_02','_header.html') ?>
<div class="write-form ap_write">
<form action="./" method="post" onsubmit="jQuery(this).find('input').each(function(){if(this.title==this.value)this.value='';});return procFilter(this, window.insert)" id="fo_write"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
<input type="hidden" name="content" value="<?php echo $__Context->oDocument->getContentText() ? $__Context->oDocument->getContentText() : '청소년활동 프로그램 신청' ?>" />
<input type="hidden" name="document_srl" value="<?php echo $__Context->document_srl ?>" />
<!-- 230412 추가 시작 -->
<div class="facility_form_wrap">
    <div class="ff_inner">
                
    </div>
</div>
<div class="precautions">
    <h2>프로그램 신청 시 <br class="hidden-sm hidden-xs"> 유의사항</h2>
    <div>
        <div class="txt_box">
            <h3>-프로그램별 참가대상이 아닌 경우 관리자에 의해 취소될 수 있습니다.(프로그램에 따라 다름)</h3>
            <h3>-신청 후 참여가 어려우신 경우 최소 3일전 취소요청을 하셔야합니다. (부산진구 전포 청소년센터 ☎051-805-3114~6)</h3>
            <p>*사전취소 요청없이 무단 불참 시 향후 부산진구 전포 청소년센터 운영 프로그램 참여에 불이익을 받을 수 있습니다.</p>
        </div>
        <div class="p_input">
            <input type="radio" id="precautions_01" required>
            <label for="precautions_01"><span>(필수)</span>프로그램 신청 유의사항을 확인하였으며 이에 동의합니다.</label>
        </div>
    </div>
</div>
<div class="precautions">
    <h2>초상권 및 개인정보 <br class="hidden-sm hidden-xs">수집·활용 동의서</h2>
    <div>
        <div class="txt_box">
            <h3>-관리부서 : 부산진구전포청소년센터</h3>
            <h3>-관련볍규 : 「개인정보 보호법」 제 15조, 제 22조, 제 24조</h3>
            <h3>기본 개인정보 수집·활용[필수]</h3>
            <p>1. 수집·이용하려는 개인정보의 항목 <br>
                : 이름, 소속, 이메일, 연락처, 주소 <br>
               2. 개인정보 수집·이용의 목적 <br>
                : 본인 식별 절차에 이용, 공지사항, 관련 자료 발송, 서비스 정보의 제공, <br>
                  신청 프로그램 이용 제공, 영상 제작 및 홍보관련 이미지 업로드(SNS, 센터 홈페이지) <br>
               3. 개인정보 이용기간 및 보유 기간 <br>
                : 해당 프로그램 신청 이후 ~ 3년  <br>
               (개인정보의 보유 및 이용기간은 3년이며, 재동의 절차를 통해 보유기간을 연장할 수 있음) <br>
               *개인정보 제공 동의 거부 권리 및 동의 거부에 따른 불이익 내용 또는 제한사항 <br>
               - 귀하는 개인정보제공 동의를 거부할 권리가 있으며, 동의거부에 따른 불이익은 없음. 다만 위 제공사항은 프로그램 활동 시 반드시 필요한 사항으로 거부하실 경우 프로그램 참여의 제함됨을 알려드립니다. <br>
               *개인정보 제공자가 동의한 내용 외의 다른 목적으로 활용하지 않으며, 제공된 개인정보의 이용을 거부하고자 할 때에는 개인정보관리책임자를 통해 열람, 정정, 삭제를 요구할 수 있음 <br>
               「개인정보보호법」등 관련 법규에 의거하여 상기 본인은 위와 같이 초상권 및 개인정보 수집·활용에 동의함. <br>
               </p>
        </div>
        <div class="p_input">
            <input type="radio" id="precautions_02" required name="precautions">
            <label for="precautions_02"><span>(필수)</span>프로그램 참여대상이 아닌 경우 관리자에 의해 등록 취소가 될 수 있습니다.</label>
        </div>
        <div class="p_input">
            <input type="radio" id="precautions_03" required name="precautions">
            <label for="precautions_03"><span>(필수)</span>상기 개인정보는 프로그램 참여를 위해 본인 동의하에 제공하며 초상권 및 개인정보 수집·활용에 동의합니다.</label>
        </div>
        <div class="p_input">
            <input type="radio" id="precautions_04" required name="precautions">
            <label for="precautions_04">상기와 같이 초상권 및 개인정보 수집·이용하는데 동의를 거부할 권리가 있으나, 동의를 거부할 경우 프로그램 참여에 제한이 있을 수 있음을 확인바랍니다.</label>
        </div>
    </div>
</div>
<button type="submit" class="facility_apply">신청하기</button>
<!-- 230412 추가 끝 -->
<?php if(!$__Context->is_logged){ ?>
<div class="form-inline paddingtb10">
	<div class="form-group">
		<input type="text" name="nick_name" class="form-control" value="<?php echo $__Context->lang->writer ?>" title="<?php echo $__Context->lang->writer ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">	
		<input type="password" name="password" class="form-control" value="<?php echo $__Context->lang->password ?>" title="<?php echo $__Context->lang->password ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">	
		<input type="text" name="email_address" class="form-control" value="<?php echo $__Context->lang->email_address ?>" title="<?php echo $__Context->lang->email_address ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">
		<input type="text" name="homepage" class="form-control" value="<?php echo $__Context->lang->homepage ?>" title="<?php echo $__Context->lang->homepage ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
</div>	
<?php } ?>
</form>
</div>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_application_form_02','_footer.html') ?>
