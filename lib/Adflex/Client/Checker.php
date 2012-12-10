<?php
/* 
 * Checking resolution using terawurfl libraries
 * @author Do Ha Son <sondoha@gmail.com>
 */

require_once MAX_PATH . '/lib/Adflex/Client/TeraWurflRemoteClient.php';

class Adflex_Client_Checker {
    
    private static $_webserviceUrl = 'http://adflex.vn/terawurfl/Tera-Wurfl/webservice.php';
    //private static $_webserviceUrl = 'http://dev.detzee.com/terawurfl/webservice.php';
    
    /**
     * Checking client's Devices 
     */
    public static function checkDevices($limitations) {        
        if($limitations == "") return true;        
        try{
            $limitations = self::_parseLimitationsArray($limitations);
            $client = new TeraWurflRemoteClient(self::$_webserviceUrl);
            $isTablet = $client->getDeviceCapability('is_tablet');
            $isWirelessDevice = $client->getDeviceCapability('is_wireless_device');
            $matched = false;
            foreach($limitations as $limitation) {
               //$log.=$limitation;
               switch($limitation) {
                   case 'Tablet':                         
                       if($isTablet) $matched = true;
                       break;
                   case 'Mobile':                      
                       if($isWirelessDevice && !$isTablet) $matched = true;
                       break;
                   case 'Desktop':
                       if(!$isTablet && !$isWirelessDevice) $matched = true;
                       break;
               }
            }
            
            self::_log($log . $matched);
        }catch(Exception $e) {
            self::_log('Error: ' . $e->getMessage());
        }
        //self::_log("Devices = " . $matched);
        return (boolean) $matched;
    }
    
    /**
     * Checking client's Brands 
     */
    public static function checkBrands($limitations) {
        if($limitations == "") return true;
        try{
            $limitations = self::_parseLimitationsArray($limitations);
            $client = new TeraWurflRemoteClient(self::$_webserviceUrl);
            $result = $client->getDeviceCapability('brand_name');
            $isWirelessDevice = $client->getDeviceCapability('is_wireless_device');
            $matched = false;
            foreach($limitations as $limitation) {
                //$log.=$limitation;
                if($isWirelessDevice && $result == $limitation) {               
                    return true;
                    break;
                }
            }
        }catch(Exception $e) {
            self::_log('Error: ' . $e->getMessage());
        }
        //self::_log("Brands = " . $matched);
        return (boolean) $matched;
    }
    
    /**
     * Check mobile os 
     */
    public static function checkMobileos($limitations) {
        if($limitations == "") return true;        
        try {
            $limitations = self::_parseLimitationsArray($limitations);
            $client = new TeraWurflRemoteClient(self::$_webserviceUrl);
            $result = $client->getDeviceCapability('device_os');
            $isWirelessDevice = $client->getDeviceCapability('is_wireless_device');
            $matched = false;
            foreach($limitations as $limitation) {
                $log.=$limitation;
                if($isWirelessDevice && $result == $limitation) {               
                    $matched = true;
                    break;
                }
            }
        } catch(Exception $e) {
            self::_log('Error: ' . $e->getMessage());
        }
        //self::_log("Mobile OS = " . $matched);
        return (boolean) $matched;
    }
    
    /**
     * Convert limitations string to array 
     */
    private function _parseLimitationsArray($limitations) {
        $limitations  = explode(",", $limitations);
        if(!is_array($limitations)) {
            $limitations = (array) $limitations;
        }
        return $limitations;
    }
    
    /**
     * Private debug function 
     */    
    private function _log($text) {
        $fh = fopen('/home/detzee/public_html/dev/log/origin-openx.log','a');
        fwrite($fh, $text . "\n");
        fclose($fh);
    }
}
?>
