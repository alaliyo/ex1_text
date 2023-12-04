<?php
     /**
     * @class  popupAdminModel
     * @author XESCHOOL Revised for use in v1.7
     * @brief admin model class of the popup module 
     **/

    class popupAdminModel extends popup {

        // �ʱ�ȭ
        function init() {
        }


        // �˾� ���� ��������
        function getInfoByPopupSrl($popup_srl) {

			$args = new stdClass();
			$args->popup_srl = $popup_srl;
            $output = executeQuery('popup.getPopupContent', $args);

			return $output->data;
		}


        // ���� ����� �˾� ���� ��������
		function getPopupForThisSrl($targets){

			$stamp = mktime();
			$stamp = date("Ymd", $stamp);
			$targets->curdate = $stamp;

			$output = executeQuery('popup.getPopupForThisSrl', $targets);
			if($output->data) return $output->data;

			return;
		}

		function getPopupMid() {
		}

		// �˾� ��� ��ȣ ���ϱ�
		function getPopupModuleSrl() {

			$oModuleModel = &getModel('module');
			$moduleSrl = $oModuleModel->getModuleSrlByMid($this->module);

			return array_pop($moduleSrl);
		}

	}
?>