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
$Id: publisher-index.php 81772 2012-09-11 00:07:29Z chris.nutting $
*/

// Require the initialisation file
require_once '../../init.php';

// Required files
require_once MAX_PATH . '/lib/OA/Dal.php';
require_once MAX_PATH . '/lib/OA/Admin/Template.php';
require_once MAX_PATH . '/www/admin/lib-statistics.inc.php';
require_once MAX_PATH . '/lib/OA/Permission.php';
require_once LIB_PATH . '/Admin/Redirect.php';

/*-------------------------------------------------------*/
/* HTML framework                                        */
/*-------------------------------------------------------*/

require_once MAX_PATH . '/www/admin/config.php';

phpAds_PageHeader(null, buildHeaderModel());
require_once MAX_PATH . '/lib/OA/Admin/Template.php';
$oTpl = new OA_Admin_Template('publisher-index.html');

$dalAffiliates = OA_Dal::factoryDAL('affiliates');
$aWebsitesZones = $dalAffiliates->getWebsitesAndZonesByAgencyId();
foreach($aWebsitesZones as $k => $aWebsitesZone){
    $id_website=$k;
}
echo $id_website;
$oTpl->assign('affiliates',$id_website);


$oTpl->display();
phpAds_PageFooter();
function buildHeaderModel()
{
    //$builder = new OA_Admin_UI_Model_InventoryPageHeaderModelBuilder();
    //return $builder->buildEntityHeader(array(), 'websites', 'list');
}

?>
