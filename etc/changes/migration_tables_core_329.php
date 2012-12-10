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
$Id: migration_tables_core_329.php 81772 2012-09-11 00:07:29Z chris.nutting $
*/

require_once(MAX_PATH.'/lib/OA/Upgrade/Migration.php');

class Migration_329 extends Migration
{

    function Migration_329()
    {
        //$this->__construct();

		$this->aTaskList_constructive[] = 'beforeAddField__campaigns_trackers__status';
		$this->aTaskList_constructive[] = 'afterAddField__campaigns_trackers__status';


		$this->aObjectMap['campaigns_trackers']['status'] = array('fromTable'=>'campaigns_trackers', 'fromField'=>'status');
    }



	function beforeAddField__campaigns_trackers__status()
	{
		return $this->beforeAddField('campaigns_trackers', 'status');
	}

	function afterAddField__campaigns_trackers__status()
	{
		return $this->afterAddField('campaigns_trackers', 'status');
	}

}

?>