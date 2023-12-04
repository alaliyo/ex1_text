<?php
    /**
     * @class  popupAdminController
     * @author XESCHOOL Revised for use in v1.7 
     * @brief  admin controller class of the popup module
     **/

    class popupAdminController extends popup {

        /**
         * @brief �ʱ�ȭ
         **/
        function init() {
        }

        /**
         * @brief �˾� �Է�/�����ϱ�
         **/
        function procPopupAdminInsert() {

            // ��û ���� ����
            $args = Context::getRequestVars();

			// ���� ������ ���� document ��Ʈ�ѷ� ��ü ����
            $oDocumentController = &getController('document');
			$args->title = $args->popup_title;

            // ���� ��ȸ�� ���� �˾� admin model ��ü ����
            $oPopupAdminModel = &getAdminModel('popup');
			
			// popup_srl�� �Ѿ���� �� ����� �ִ��� Ȯ��
			if($args->popup_srl) {
                $popup_info = $oPopupAdminModel->getInfoByPopupSrl($args->popup_srl);
                if($popup_info->popup_srl != $args->popup_srl) unset($args->popup_srl);
            }

            // module_srl ���� ���翩�ο� ���� insert/update
            if(!$args->popup_srl) {

				// ���� ����
				$output = $oDocumentController->insertDocument($args);
				
				// ���� ������� ����������ȣ ����
				$args->document_srl = $output->get('document_srl');

				// popup_srl ���� ���� ����
                $args->popup_srl = getNextSequence();

				// popup ���̺� �Է� 
				$output = executeQuery('popup.insertPopup', $args);
                $msg_code = 'success_registed';

				// popup_srl �� ����
				$output->add('popup_srl', $args->popup_srl);

			} else {

				// ���� ����������ȣ Ȯ��
				$args->document_srl = $popup_info->document_srl;

				// ���� Ȯ��			
				$oDocumentModel = &getModel('document');
				$oDocument = $oDocumentModel->getDocument($popup_info->document_srl, $this->grant->manager);

				// ���� ����
				$oDocumentController = &getController('document');
				$output = $oDocumentController->updateDocument($oDocument, $args);
				
				// popup ���̺� ����
                $output = executeQuery('popup.updatePopup', $args);
                $msg_code = 'success_updated';

                // ĳ�� ���� ����
                $cache_file = sprintf("./files/cache/popup/%d.cache.php", $popup_info->popup_srl);
                if(file_exists($cache_file)) FileHandler::removeFile($cache_file);
            }

            // ������ ������ ����
            if(!$output->toBool()) return $output;
 
            // �޽��� ���
            $this->setMessage($msg_code);
 
            // success_return_url�� ���翩�ο� ���� URL ������
            if (Context::get('success_return_url')){
                $this->setRedirectUrl(Context::get('success_return_url'));
            }else{
                $this->setRedirectUrl(getNotEncodedUrl('', 'module', 'admin', 'act', 'dispPopupAdminInsertPopup', 'popup_srl', $output->get('popup_srl')));
            }

        }

        /**
         * @brief �˾� �����ϱ�
         **/
        function procPopupAdminDelete() {

			// popup_srl Ȯ��
            $args->popup_srl = Context::get('popup_srl');

            // ����
			$output = executeQuery('popup.deletePopup', $args);
			$msg_code = 'success_deleted';
 
            // ������ ������ ����
            if(!$output->toBool()) return $output;
 
            // �޽��� ���
            $this->setMessage($msg_code);
			$this->add('page',Context::get('page'));
			
            // URL ������
            if (Context::get('success_return_url')){
                $this->setRedirectUrl(Context::get('success_return_url'));
            }else{
                $this->setRedirectUrl(getNotEncodedUrl('', 'module', 'admin', 'act', 'dispPopupAdminContentList', 'popup_srl', ''));
            }

        }

        /**
         * @brief �˾� ��� ���
         **/
		function popupModuleRegister() {
			
			// ��ü����
			$oModuleController = &getController('module');
			$oModuleModel = &getModel('module');

			// ��� ��� Ȯ��
			$ouput = $oModuleModel->isIDExists($this->module);

			if(!$output) {

				// module �� popup ��� ���� �Է�
				$site_module_info = Context::get('site_module_info');
				$args->site_srl = $site_module_info->site_srl;
				$args->mid = $this->module;
				$args->module = $this->module;
				$args->browser_title = $this->module;
				
				$output = $oModuleController->insertModule($args);

				// ������ ���� 
				$module_srl = $output->get('module_srl');
				Context::set('target_module_srl', $module_srl);
				Context::set('editor_height', '200');
				Context::set('enable_autosave', 'N');

				$oEditorController = &getController('editor');
				$oEditorController->procEditorInsertModuleConfig();
			}
		}


	}
?>