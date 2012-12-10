<?php

/*
+---------------------------------------------------------------------------+
| OpenX v2.8                                                                |
| ==========                                                                |
|                                                                           |
| Copyright (c) 2003-2009 OpenX Limited                                     |
| For contact details, see: http://www.openx.org/                           |
|                                                                           |
| This program is free software; you can redistribute it and/or modify      |
| it under the terms of the GNU General Public License as published by      |
| the Free Software Foundation; either version 2 of the License, or         |
| (at your option) any later version.                                       |
|                                                                           |
| This program is distributed in the hope that it will be useful,           |
| but WITHOUT ANY WARRANTY; without even the implied warranty of            |
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             |
| GNU General Public License for more details.                              |
|                                                                           |
| You should have received a copy of the GNU General Public License         |
| along with this program; if not, write to the Free Software               |
| Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA |
+---------------------------------------------------------------------------+
$Id: dashboard.php 81772 2012-09-11 00:07:29Z chris.nutting $
*/

// Require the initialisation file
require_once '../../init.php';

// Required files
require_once MAX_PATH . '/lib/OA/Dal.php';
require_once MAX_PATH . '/lib/OA/Admin/Template.php';
require_once MAX_PATH . '/www/admin/lib-statistics.inc.php';
require_once MAX_PATH . '/lib/OA/Permission.php';
require_once LIB_PATH . '/Admin/Redirect.php';

require_once MAX_PATH . '/www/admin/lib-maintenance-priority.inc.php';
require_once MAX_PATH . '/lib/max/Delivery/common.php';
require_once MAX_PATH . '/lib/max/other/common.php';
require_once MAX_PATH . '/www/admin/config.php';
require_once MAX_PATH . '/lib/OA/Admin/DaySpan.php';
require_once MAX_PATH . '/lib/OA/Admin/Statistics/Factory.php';
require_once MAX_PATH . '/lib/pear/Date.php';

/*-------------------------------------------------------*/
/* HTML framework                                        */
/*-------------------------------------------------------*/

require_once MAX_PATH . '/www/admin/config.php';
OA_Permission::enforceAccount(OA_ACCOUNT_ADMIN, OA_ACCOUNT_MANAGER);
//OA_Permission::enforceTrue(isset($GLOBALS['OA_Navigation'][OA_ACCOUNT_MANAGER]['1']));

// If the user is a manager and the dashboard can't be showed to him
// clear the menu cache and redirect this user to advertiser-index.php
if (OA_Permission::isAccount(OA_ACCOUNT_ADMIN) && !$GLOBALS['_MAX']['CONF']['ui']['dashboardEnabled']) {
    OA_Admin_Menu::_clearCache(OA_ACCOUNT_ADMIN);
    OX_Admin_Redirect::redirect('agency-index.php');
}
if (OA_Permission::isAccount(OA_ACCOUNT_MANAGER) && !$GLOBALS['_MAX']['CONF']['ui']['dashboardEnabled']) {
    OA_Admin_Menu::_clearCache(OA_ACCOUNT_MANAGER);
    OX_Admin_Redirect::redirect('advertiser-index.php');
}
if (OA_Permission::isAccount(OA_ACCOUNT_MANAGER) && !$GLOBALS['_MAX']['CONF']['sync']['checkForUpdates']) {
    OA_Admin_Menu::_clearCache(OA_ACCOUNT_MANAGER);
    OX_Admin_Redirect::redirect('advertiser-index.php');
}

require_once MAX_PATH.'/www/admin/plugins/apStatsGraphsUI/lib/apGraph.php';
MAX_commonSetNoCacheHeaders();
$oGraph = AP_Graph::factory($_GET);
phpAds_PageHeader($oGraph->getMenuIndex(), '', '../../');
//echo $oGraph->getUrl();
?>
<div style="width: 800px">

    <?php open_flash_chart_object('800', 350, $oGraph->getUrl()); ?>

    <div style="text-align: center; margin: 8px 0; padding: 4px 32px; border-top: 1px solid #cccccc; border-bottom: 1px solid #cccccc;">
        <?php echo getButtons($oGraph->getLinks()); ?>
    </div>
    <div style="margin: 4px">
        <script type='text/javascript'><!--//<![CDATA[
var m3_u = (location.protocol=='https:'?'https://openx.adserverplugins.com/live/www/delivery/ajs.php':'http://openx.adserverplugins.com/live/www/delivery/ajs.php');
var m3_r = Math.floor(Math.random()*99999999999);
if (!document.MAX_used) document.MAX_used = ',';
document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
document.write ("?zoneid=1&version=<?php echo urlencode($version); ?>");
document.write ('&amp;cb=' + m3_r);
if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
document.write ("&amp;loc=" + escape(window.location));
if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
if (document.context) document.write ("&context=" + escape(document.context));
if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
document.write ("'><\/scr"+"ipt>");

        //]]>--></script>
    </div>

</div>

<script type="text/javascript">
<?php echo $oGraph->getJs(); ?>
</script>
<?php

// Display the OpenX page footer
phpAds_PageFooter();


function getButtons($aLinks) {
    $aButtons = array(
        'prev' => array('< Prev', 'left'),
        'next' => array('Next >', 'right'),
        'up'   => array('Up', 'none'),
    );
    $str = '';
    foreach ($aButtons as $type => $aData) {
        list($text, $float) = $aData;
        $str .= '<button ';
        if (!empty($aLinks[$type]['url'])) {
            $str .= 'onclick="location.href=\''.htmlspecialchars($aLinks[$type]['url']).'\'" ';
        } else {
            $str .= 'disabled="disabled" ';
        }
        if (!empty($aLinks[$type]['label'])) {
            $text = $aLinks[$type]['label'];
        }
        $str .= 'style="width: 10em; float: '.$float.'">'.htmlspecialchars($text).'</button>';
    }
    return $str;
}