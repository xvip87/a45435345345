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
$Id: AgencyInfo.php 81772 2012-09-11 00:07:29Z chris.nutting $
*/

/**
 * @package    OpenXDll
 * @author     Andriy Petlyovanyy <apetlyovanyy@lohika.com>
 *
 */

// Require the base Info class.
require_once MAX_PATH . '/lib/OA/Info.php';

/**
 * The OA_Dll_AgencyInfo class extends the OA_Info class and contains information
 * about the agency.
 *
 */

class OA_Dll_AgencyInfo extends OA_Info
{
    /**
     * This field contains the ID of the agency.
     *
     * @var integer $agencyId
     */
    var $agencyId;

    /**
     * This field contains the ID of the agency account.
     *
     * @var integer $accountId
     */
    var $accountId;

    /**
     * This field provides the name of the agency.
     *
     * @var string $agencyName
     */
    var $agencyName;

    /**
     * The password variable is the password for the agency.
     *
     * @var string $password
     */
    var $password;

    /**
     * This field provides the name of the contact for the agency.
     *
     * @var string $contactName
     */
    var $contactName;

    /**
     * This field provides the email address of the contact for the agency.
     *
     * @var string $emailAddress
     */
    var $emailAddress;
	//tuannv add 16/11/2012
    var $userAddress;
    var $userPhone;
    var $websiteUrl;
	//tuannv add 16/11/2012
    /**
     * This method returns an array of fields with their corresponding types.
     *
     * @access public
     *
     * @return array
     */
    function getFieldsTypes()
    {
        return array(
                    'agencyId' => 'integer',
                    'accountId' => 'integer',
                    'agencyName' => 'string',
                    'password' => 'string',
                    'contactName' => 'string',
                    'emailAddress' => 'string',
					//tuannv add 16/11/2012
                    'userAddress' => 'string',
                    'userPhone' => 'string',
                    'websiteUrl' => 'string'
					//tuannv add 16/11/2012
                );
    }
}

?>