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
$Id: affiliate-preview.php 81772 2012-09-11 00:07:29Z chris.nutting $
*/

// This is a page that will allow a publisher to view a page with all their zones

if ((empty($_GET['affiliateid'])) || (empty($_GET['codetype']))) {
    echo "Error: No data to display";
    exit;
}

// Require the initialisation file
require_once '../../init.php';

// Required files
require_once MAX_PATH . '/www/admin/config.php';
require_once MAX_PATH . '/lib/max/language/Loader.php';
require_once MAX_PATH . '/lib/max/other/lib-io.inc.php';
require_once MAX_PATH . '/www/admin/plugins/adflexReport/Invocation.php';
require_once MAX_PATH . '/www/admin/lib-zones.inc.php';
require_once MAX_PATH . '/www/admin/lib-gui.inc.php';

phpAds_registerGlobal('affiliateid', 'codetype');

OA_Permission::enforceAccount(OA_ACCOUNT_MANAGER,OA_ACCOUNT_ADVERTISER,OA_ACCOUNT_TRAFFICKER);
OA_Permission::enforceAccessToObject('affiliates', $affiliateid);

/*-------------------------------------------------------*/
/* Store preferences									 */
/*-------------------------------------------------------*/
$session['prefs']['inventory_entities'][OA_Permission::getEntityId()]['affiliateid'] = $affiliateid;
phpAds_SessionDataStore();
$oHeaderModel = MAX_displayWebsiteBreadcrumbs($affiliateid);
phpAds_PageHeader("4.2.5", $oHeaderModel);

Language_Loader::load('default');

$maxInvocation = new Adflex_Admin_Invocation();
echo $maxInvocation->generateInvocationCode($invocationTag = null);
phpAds_PageFooter();
function buildHeaderModel()
{
    $builder = new OA_Admin_UI_Model_InventoryPageHeaderModelBuilder();
    return $builder->buildEntityHeader(array(), 'websites', 'list');
}
?>