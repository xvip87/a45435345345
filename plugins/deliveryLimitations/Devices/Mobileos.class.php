<?php

/*
+---------------------------------------------------------------------------+
| OpenX v${RELEASE_MAJOR_MINOR}                                                                |
| =======${RELEASE_MAJOR_MINOR_DOUBLE_UNDERLINE}                                                                |
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
$Id: Browser.class.php 44411 2009-10-07 14:59:11Z david.keen $
*/

require_once LIB_PATH . '/Extension/deliveryLimitations/DeliveryLimitationsCommaSeparatedData.php';
require_once MAX_PATH . '/lib/max/Plugin/Translation.php';
//require_once dirname(__FILE__) . '/lib/phpSniff/phpSniff.class.php';

/**
 * A Client delivery limitation plugin, for filtering delivery of ads on the
 * basis of the viewer's browser.
 *
 * Works with:
 * A comma separated list of valid browser codes. See the phpSniff.class.php
 * file for details of the valid browser codes.
 *
 * Valid comparison operators:
 * =~, !~
 *
 * @package    OpenXPlugin
 * @subpackage DeliveryLimitations
 * @author     Andrew Hill <andrew.hill@openx.org>
 * @author     Chris Nutting <chris.nutting@openx.org>
 * @author     Andrzej Swedrzynski <andrzej.swedrzynski@openx.org>
 */
class Plugins_DeliveryLimitations_Client_Mobileos extends Plugins_DeliveryLimitations_CommaSeparatedData
{
    
    private $_mobileos = array(
        'iPhone OS' => 'iPhone OS',
        'Android' => 'Android',
        'Symbian OS' => 'Symbian OS',
        'Windows Phone OS'=> 'Windows Phone OS',
        'RIM OS' => 'RIM OS',
        'webOS' => 'webOS',
        'Linux Smartphone OS' => 'Linux Smartphone OS'
    );
    
    function Plugins_DeliveryLimitations_Client_Mobileos()
    {
        $this->Plugins_DeliveryLimitations_ArrayData();        
        $this->setAValues($this->_mobileos);
        $this->nameEnglish = 'Platforms';
    }


    /**
     * Returns true if this plugin is available in the current context,
     * false otherwise.
     *
     * @return boolean
     */
    function isAllowed()
    {
        return !empty($GLOBALS['_MAX']['CONF']['Client']['sniff']);
    }


    function displayArrayData()
    {
        $tabindex =& $GLOBALS['tabindex'];

        $i = 0;

        $browsers = array_flip($this->_aValues);

		$display = count($this->data)?"display:block":"display:none";
		echo "<ul class=\"toggle-list\" style=\"{$display}\">";
		foreach ($browsers as $key => $value) {
			if ($i % 4 == 0) echo "<tr>";
			echo "<li><input type='checkbox' name='acl[{$this->executionorder}][data][]' value='$key'".(in_array($key, $this->data) ? ' checked="checked"' : '')." tabindex='".($tabindex++)."'>".ucfirst($value)."</li>";
			if (($i + 1) % 4 == 0) echo "</tr>";
			$i++;
		}
		if (($i + 1) % 4 != 0) echo "</tr>";
		echo "</ul>";
    }
    
    public function display()
    {
        global $tabindex;
        

        $bgcolor = $this->executionorder % 2 == 0 ? "#E6E6E6" : "#FFFFFF";

        if ($this->executionorder == 0) {
            echo "<input type='hidden' name='acl[{$this->executionorder}][logical]' value='and'>&nbsp;";
        } else {
            echo "<select style='display:none' name='acl[{$this->executionorder}][logical]' tabindex='".($tabindex++)."'>";
            echo "<option value='or' " . (($this->logical == 'or') ? 'selected' : '') . ">{$GLOBALS['strOR']}</option>";
            echo "<option value='and' " . (($this->logical == 'and') ? 'selected' : '') . ">{$GLOBALS['strAND']}</option>";
            echo "</select>";
        }
        echo "<input type='hidden' name='acl[{$this->executionorder}][type]' value='{$this->type}'>";
	echo "<input type='hidden' name='acl[{$this->executionorder}][executionorder]' value='{$this->executionorder}'>";


        $this->displayComparison();


        $this->displayData();
    }
    
    /**
     * Echos the HTML to display the comparison operator for this limitation
     *
     * @return void
     */
    public function displayComparison()
    {
        global $tabindex;
        echo "<select style='display:none' name='acl[{$this->executionorder}][comparison]' tabindex='".($tabindex++)."'>";
        foreach($this->aOperations as $sOperator => $sDescription) {
            echo "<option value='$sOperator' " . (($this->comparison == $sOperator) ? 'selected' : '') . ">$sDescription</option>";
        }
		echo "</select>";
    }


}

?>
