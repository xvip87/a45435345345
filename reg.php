<?php
header('Content-Type:text/html; charset=UTF-8');
if (!@include('lib/pear/XML/RPC.php')) {
	  die('Error: cannot load the PEAR XML_RPC class');
}

require_once '/init.php';
require_once '/lib/OA/Dal.php';
$doUsers = OA_Dal::factoryDO('users');      
$Account=$doUsers->get('gdnhansu');     
print_r($Account);
//require_once '/lib/max/Dal/DataObjects/DB_DataObjectCommon.php';
//require_once '/lib/OA/Permission.php';

//$Account=DataObjects_Users::userExists('gdnhansu');
//print_r($Account);
//$oAccounts   = OA_Dal::staticGetDO('users', 'gdnhansu');
//print_r($oAccounts);
//echo $active = $oAccounts->active."dasdsa";

//$oPlugin = OA_Auth::staticGetAuthPlugin();
//$userId = $oPlugin->getMatchingUserId('keke@gmail.com','ads');
//$userId = $oPlugin->saveUser($userId,'ads','admin123','Van Nguyen','keke@gmail.com','en','99999','lac long quan');


if (empty($_POST)) {
    // If no data has been passed into this script, display the form
    echo "
    <form method='POST' enctype='multipart/form-data'>
        Tài khoản: <input type='text' name='username' /><hr />
       Mật khẩu: <input type='password' name='password' /><hr />
        Nhập lại mật khẩu: <input type='password' name='repassword' /><hr />
        Tên bạn: <input type='text' name='agencyName' /><br />
        Website: <input type='text' name='websiteUrl' /><br />
        Thư điện tử: <input type='text' name='emailAddress' /><hr />		
       Địa chỉ: <input type='text' name='Address' /><hr />		
      Điện thoại: <input type='text' name='Phone' /><hr />		
	  Thỏa Thuận Sử Dụng Dịch Vụ<hr />	
	  <input type='checkbox' name='ok' /> Tôi đồng ý với những điều khoản trên<hr />
        <input type='submit' name='submit' value='Submit' />
    </form>
    ";
} else {
	$xmlRpcHost = 'localhost';
	$webXmlRpcDir = '/ads/www/api/v1/xmlrpc';
	$logonXmlRpcWebServiceUrl = $webXmlRpcDir . '/LogonXmlRpcService.php';
	$AdvertiserXmlRpcWebServiceUrl = $webXmlRpcDir . '/AdvertiserXmlRpcService.php';
	$zoneXmlRpcWebServiceUrl = $webXmlRpcDir . '/ZoneXmlRpcService.php';
	$username = 'admin';
	$password = 'dangnhapcailin';
	function returnXmlRpcResponseData($oResponse)
	{
		 if (!$oResponse->faultCode()) {
			  $oVal = $oResponse->value();
			  $data = XML_RPC_decode($oVal);
			  return $data;
		 } else {
		 die('Fault Code: ' . $oResponse->faultCode() . "\n" .
			 'Fault Reason: ' . $oResponse->faultString() . "\n");
		 }
	}
$aParams = array(
                    new XML_RPC_Value($username, 'string'),
                    new XML_RPC_Value($password, 'string')
             );
$oMessage  = new XML_RPC_Message('logon', $aParams);
$oClient   = new XML_RPC_Client($logonXmlRpcWebServiceUrl, $xmlRpcHost);
$oResponse = $oClient->send($oMessage);
if (!$oResponse) {
     die('Communication error: ' . $oClient->errstr);
}
$sessionId = returnXmlRpcResponseData($oResponse);
//echo 'User logged on with session Id : ' . $sessionId . '<br>';	



$Advertiser   = new XML_RPC_Value(
           array(
					'agencyId' => new XML_RPC_Value(1,'int'),
                                        'advertiserName' => new XML_RPC_Value($_POST['agencyName'],'string'),
					'contactName' => new XML_RPC_Value($_POST['agencyName'], 'string'),
					'emailAddress' => new XML_RPC_Value($_POST['emailAddress'], 'string'),
					'username' => new XML_RPC_Value($_POST['username'], 'string'),
					'password' => new XML_RPC_Value($_POST['password'], 'string'),
					'comments' => new XML_RPC_Value('', 'string'),
                                        'userAddress' => new XML_RPC_Value($_POST['Address'], 'string'), 
                                        'userPhone' => new XML_RPC_Value($_POST['Phone'], 'string'),  
                                        'websiteUrl' => new XML_RPC_Value($_POST['websiteUrl'], 'string'),      
                ),
                'struct'
                );
$aParams    = array(
            new XML_RPC_Value($sessionId, 'string'),
            $Advertiser
            );
$oMessage   = new XML_RPC_Message('addAdvertiser', $aParams);
$oClient    = new XML_RPC_Client($AdvertiserXmlRpcWebServiceUrl, $xmlRpcHost);
$oResponse  = $oClient->send($oMessage);
$AdvertiserId   = returnXmlRpcResponseData($oResponse);
echo 'Agency with id: ' . $AdvertiserId . ' added <br>';

}
?>