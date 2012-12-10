<?php /* Smarty version 2.6.18, created on 2012-12-10 08:34:18
         compiled from publisher-index.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'publisher-index.html', 37, false),)), $this); ?>
<b style="font-size: 1.2em;">Be a publisher in 2 easy steps:</b>


<div id="steps">
        <div class="step ui-corner-top ui-corner-bottom" id="step1">
            <div class="step-title ui-widget-header ui-corner-top">
                Step 1
                                <div class="done"></div>
                            </div>
            <div class="step-content ui-corner-bottom">
                <img style="float: left; margin: 0 10px 10px 0;" alt="" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/settings.png">
                Setup your publisher settings
                <div style="clear:both"></div>
                                <a class="primary-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="affiliate-edit.php?affiliateid=<?php echo $this->_tpl_vars['affiliates']; ?>
" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-triangle-1-e"></span><span class="ui-button-text">Settings</span></a>
                            </div>
        </div>
        <div class="next"><img alt="" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/next.png"></div>
        <div style="width: 225px;" class="step ui-corner-top ui-corner-bottom" id="step2">
            <div class="step-title ui-widget-header ui-corner-top">
                Step 2
                            </div>
            <div class="step-content ui-corner-bottom">
                <img style="float: left; margin: 0 10px 10px 0;" alt="" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/web.png">
                Put Ad Codes on your mobile internet sites
                <div style="clear:both"></div>
                <a class="primary-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="generate-code.php?affiliateid=<?php echo $this->_tpl_vars['affiliates']; ?>
&codetype=invocationTags:oxInvocationTags:spc&block=0&blockcampaign=0&target=&source=&withtext=0&charset=&noscript=1&ssl=0&comments=1&affiliateid=<?php echo $this->_tpl_vars['affiliates']; ?>
&submitbutton=Generate" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-triangle-1-e"></span><span class="ui-button-text">Ad Codes</span></a>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>