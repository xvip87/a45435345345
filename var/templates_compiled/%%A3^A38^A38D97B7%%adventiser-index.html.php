<?php /* Smarty version 2.6.18, created on 2012-12-07 15:02:46
         compiled from adventiser-index.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'adventiser-index.html', 35, false),)), $this); ?>

<b style="font-size: 1.2em;">Be an advertiser in 2 easy steps:</b>
<div id="steps">
        <div class="step ui-corner-top ui-corner-bottom" id="step1">
            <div class="step-title ui-widget-header ui-corner-top">
                Step 1
                            </div>
            <div class="step-content ui-corner-bottom">
                <img style="float: left; margin: 0 10px 10px 0;" alt="" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/dollar.png">
                Add credits to your account
                <div style="clear:both"></div>
                <a class="primary-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="#" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-triangle-1-e"></span><span class="ui-button-text">Top Up</span></a>
            </div>
        </div>
        <div class="next"><img alt="&gt;" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/next.png"></div>
        <div class="step ui-corner-top ui-corner-bottom" id="step2">
            <div class="step-title ui-widget-header ui-corner-top">
                Step 2
                            </div>
            <div class="step-content ui-corner-bottom">
                <img style="float: left; margin: 0 10px 10px 0;" alt="" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['assetPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
/images/mobile.png">
                Create your first campaign
                <div style="clear:both"></div>
                <a class="primary-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="campaign-edit.php?clientid=<?php echo $this->_tpl_vars['Clientid']; ?>
" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-triangle-1-e"></span><span class="ui-button-text">Create Campaign</span></a>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>