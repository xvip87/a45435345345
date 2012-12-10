<?php

/**
 * apStatsGraphs for the OpenX ad server (Free Version).
 *
 * @author Matteo Beccati
 * @copyright 2009 AdserverPlugins.com
 * @license http://creativecommons.org/licenses/by-nd/3.0/
 *
 * $Id: index.php 487 2010-08-11 16:07:35Z matteo.beccati $
 */

// Prepare the OpenX environment via standard external OpenX scripts
require_once '../../../../init.php';
require_once '../../config.php';
require_once './lib/apGraph.php';
require_once MAX_PATH.'/lib/OA/Sync.php';

// Limit access to logged in users
OA_Permission::enforceAccount(OA_ACCOUNT_ADMIN, OA_ACCOUNT_MANAGER, OA_ACCOUNT_ADVERTISER, OA_ACCOUNT_TRAFFICKER);

// No cache
MAX_commonSetNoCacheHeaders();

$oGraph = AP_Graph::factory($_GET);

// Display the OpenX page header
phpAds_PageHeader($oGraph->getMenuIndex(), '', '../../');

$version = OA_Sync::getConfigVersion(OA_Dal_ApplicationVariables::get('apStatsGraphsUI_version'));

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
