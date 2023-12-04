<?php

/**
 * Super Cache module: base class
 * 
 * Copyright (c) 2016 Kijin Sung <kijin@kijinsung.com>
 * All rights reserved.
 * 
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
 * for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
class SuperCache extends ModuleObject
{
	/**
	 * Triggers to insert.
	 */
	protected static $_insert_triggers = array(
		array('moduleHandler.init', 'before', 'controller', 'triggerBeforeModuleHandlerInit'),
		array('moduleHandler.init', 'after', 'controller', 'triggerAfterModuleHandlerInit'),
		array('document.getDocumentList', 'before', 'controller', 'triggerBeforeGetDocumentList'),
		array('document.getDocumentList', 'after', 'controller', 'triggerAfterGetDocumentList'),
		array('document.insertDocument', 'after', 'controller', 'triggerAfterInsertDocument'),
		array('document.updateDocument', 'after', 'controller', 'triggerAfterUpdateDocument'),
		array('document.deleteDocument', 'after', 'controller', 'triggerAfterDeleteDocument'),
		array('document.copyDocumentModule', 'after', 'controller', 'triggerAfterCopyDocumentModule'),
		array('document.moveDocumentModule', 'after', 'controller', 'triggerAfterMoveDocumentModule'),
		array('document.moveDocumentToTrash', 'after', 'controller', 'triggerAfterMoveDocumentToTrash'),
		array('document.restoreTrash', 'after', 'controller', 'triggerAfterRestoreDocumentFromTrash'),
		array('comment.insertComment', 'after', 'controller', 'triggerAfterInsertComment'),
		array('comment.updateComment', 'after', 'controller', 'triggerAfterUpdateComment'),
		array('comment.deleteComment', 'after', 'controller', 'triggerAfterDeleteComment'),
		array('moduleHandler.proc', 'after', 'controller', 'triggerAfterModuleHandlerProc'),
		array('display', 'before', 'controller', 'triggerBeforeDisplay'),
		array('display', 'after', 'controller', 'triggerAfterDisplay'),
	);
	
	/**
	 * Triggers to delete.
	 */
	protected static $_delete_triggers = array(
		array('moduleObject.proc', 'before', 'controller', 'triggerBeforeModuleObjectProc'),
	);
	
	/**
	 * Widget names to skip caching.
	 */
	protected static $_skipWidgetNames = array(
		'login_info' => true,
		'language_select' => true,
		'point_status' => true,
		'soo_xerstory' => true,
		'widgetContent' => true,
		'widgetBox' => true,
	);
	
	/**
	 * Widget attributes to skip decoding.
	 */
	protected static $_skipWidgetAttrs = array(
		'class' => true,
		'document_srl' => true,
		'style' => true,
		'widget' => true,
		'widget_padding_top' => true,
		'widget_padding_right' => true,
		'widget_padding_bottom' => true,
		'widget_padding_left' => true,
		'widgetstyle' => true,
	);
	
	/**
	 * Module configuration cache.
	 */
	protected static $_config_cache = null;
	
	/**
	 * CacheHandler cache.
	 */
	protected static $_cache_handler_cache = null;
	
	/**
	 * Get module configuration.
	 * 
	 * @return object
	 */
	public function getConfig()
	{
		if (self::$_config_cache === null)
		{
			$oModuleModel = getModel('module');
			self::$_config_cache = $oModuleModel->getModuleConfig($this->module) ?: new stdClass;
		}
		return self::$_config_cache;
	}
	
	/**
	 * Set module configuration.
	 * 
	 * @param object $config
	 * @return object
	 */
	public function setConfig($config)
	{
		$oModuleController = getController('module');
		$result = $oModuleController->insertModuleConfig($this->module, $config);
		if ($result->toBool())
		{
			self::$_config_cache = $config;
		}
		return $result;
	}
	
	/**
	 * Get the cache handler from XE Core.
	 * 
	 * This automatically falls back to the built-in file cache driver
	 * if XE doesn't have an object cache configured.
	 * 
	 * @return object
	 */
	protected function _getCacheHandler()
	{
		$db_info = Context::getDbInfo();
		if ($db_info->use_object_cache)
		{
			if (!preg_match('/^(?:file|dummy)\b/i', $db_info->use_object_cache))
			{
				$handler = CacheHandler::getInstance('object');
				if ($handler->isSupport())
				{
					return $handler;
				}
			}
		}
		
		include_once __DIR__ . '/supercache.filedriver.php';
		return new SuperCacheFileDriver;
	}
	
	/**
	 * Get information from the system cache.
	 * 
	 * @param string $key
	 * @param int $ttl
	 * @param string $group_key (optional)
	 * @return mixed
	 */
	public function getCache($key, $ttl = 86400, $group_key = null)
	{
		if (self::$_cache_handler_cache === null)
		{
			self::$_cache_handler_cache = $this->_getCacheHandler();
		}
		
		$group_key = $group_key ?: $this->module;
		return self::$_cache_handler_cache->get(self::$_cache_handler_cache->getGroupKey($group_key, $key), $ttl);
	}
	
	/**
	 * Save information in the system cache.
	 * 
	 * @param string $key
	 * @param mixed $value
	 * @param int $ttl
	 * @param string $group_key (optional)
	 * @return bool
	 */
	public function setCache($key, $value, $ttl = 86400, $group_key = null)
	{
		if (self::$_cache_handler_cache === null)
		{
			self::$_cache_handler_cache = $this->_getCacheHandler();
		}
		
		$group_key = $group_key ?: $this->module;
		return self::$_cache_handler_cache->put(self::$_cache_handler_cache->getGroupKey($group_key, $key), $value, $ttl);
	}
	
	/**
	 * Delete information from the system cache.
	 * 
	 * @param string $key
	 * @param string $group_key (optional)
	 * @return bool
	 */
	public function deleteCache($key, $group_key = null)
	{
		if (self::$_cache_handler_cache === null)
		{
			self::$_cache_handler_cache = $this->_getCacheHandler();
		}
		
		$group_key = $group_key ?: $this->module;
		self::$_cache_handler_cache->delete(self::$_cache_handler_cache->getGroupKey($group_key, $key));
	}
	
	/**
	 * Clear the system cache.
	 * 
	 * @param string $group_key (optional)
	 * @return bool
	 */
	public function clearCache($group_key = null)
	{
		if (self::$_cache_handler_cache === null)
		{
			self::$_cache_handler_cache = $this->_getCacheHandler();
		}
		
		$group_key = $group_key ?: $this->module;
		return self::$_cache_handler_cache->invalidateGroupKey($group_key);
	}
	
	/**
	 * Return an error message.
	 * 
	 * @param string $message
	 * @param $arg1, $arg2 ...
	 * @return object
	 */
	public function error($message /* $arg1, $arg2 ... */)
	{
		$args = func_get_args();
		if (count($args) > 1)
		{
			global $lang;
			array_shift($args);
			$message = vsprintf($lang->$message, $args);
		}
		return class_exists('BaseObject') ? new BaseObject(-1, $message) : new Object(-1, $message);
	}
	
	/**
	 * Check triggers.
	 * 
	 * @return bool
	 */
	public function checkTriggers()
	{
		$oModuleModel = getModel('module');
		foreach (self::$_insert_triggers as $trigger)
		{
			if (!$oModuleModel->getTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]))
			{
				return true;
			}
		}
		foreach (self::$_delete_triggers as $trigger)
		{
			if ($oModuleModel->getTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]))
			{
				return true;
			}
		}
		return false;
	}
	
	/**
	 * Register triggers.
	 * 
	 * @return object
	 */
	public function registerTriggers()
	{
		$oModuleModel = getModel('module');
		$oModuleController = getController('module');
		foreach (self::$_insert_triggers as $trigger)
		{
			if (!$oModuleModel->getTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]))
			{
				$oModuleController->insertTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]);
			}
		}
		foreach (self::$_delete_triggers as $trigger)
		{
			if ($oModuleModel->getTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]))
			{
				$oModuleController->deleteTrigger($trigger[0], $this->module, $trigger[2], $trigger[3], $trigger[1]);
			}
		}
		return class_exists('BaseObject') ? new BaseObject(0, 'success_updated') : new Object(0, 'success_updated');
	}
	
	/**
	 * Install.
	 * 
	 * @return object
	 */
	public function moduleInstall()
	{
		return $this->registerTriggers();
	}
	
	/**
	 * Check update.
	 * 
	 * @return bool
	 */
	public function checkUpdate()
	{
		return $this->checkTriggers();
	}
	
	/**
	 * Update.
	 * 
	 * @return object
	 */
	public function moduleUpdate()
	{
		return $this->registerTriggers();
	}
	
	/**
	 * Recompile cache.
	 * 
	 * @return void
	 */
	public function recompileCache()
	{
		$this->clearCache();
	}
}
