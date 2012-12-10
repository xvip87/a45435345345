<?php

if (!@include('lib/pear/XML/RPC.php')) {
      die('Error: cannot load the PEAR XML_RPC class');
}
$xmlRpcHost = 'mclick.mobi';
$webXmlRpcDir = '/www/api/v1/xmlrpc';
$logonXmlRpcWebServiceUrl = $webXmlRpcDir . '/LogonXmlRpcService.php';
$publisherXmlRpcWebServiceUrl = $webXmlRpcDir . '/PublisherXmlRpcService.php';
$zoneXmlRpcWebServiceUrl = $webXmlRpcDir . '/ZoneXmlRpcService.php';


//--------------------------------------------------replace your username and password here
$username = 'user_admin';
$password = 'user_admin';
//

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
//s--------------------------------------------------tart login with user and password you insert
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
echo 'User logged on with session Id : ' . $sessionId . '<br>';
//--------------------------------------------------end login with api

//--------------------------------------------------this function start insert Website to your account , you need change agencyId with your id account and change fields ( publisherName,contactName,emailAddress,website,username....)
$Publisher   = new XML_RPC_Value(
           array(
                'agencyId' => new XML_RPC_Value(10,'int'),
                'publisherName' => new XML_RPC_Value('tuan eway', 'string'),
                'contactName' => new XML_RPC_Value('tuan eway2', 'string'),
                'emailAddress' => new XML_RPC_Value('tuaneway@eway.vn', 'string'),
                'website' => new XML_RPC_Value('eway-tuan.vn', 'string'),
                'username' => new XML_RPC_Value('tuan_eway', 'string'),
                ),
                'struct'
                );
$aParams    = array(
            new XML_RPC_Value($sessionId, 'string'),
            $Publisher
            );
$oMessage   = new XML_RPC_Message('addPublisher', $aParams);
$oClient    = new XML_RPC_Client($publisherXmlRpcWebServiceUrl, $xmlRpcHost);
$oResponse  = $oClient->send($oMessage);
$PublisherId   = returnXmlRpcResponseData($oResponse);
echo 'Publisher with id: ' . $PublisherId . ' added <br>';
//--------------------------------------------------end insert Publisher


//--------------------------------------------------this function start insert Zone to your website , you need change $publisherId and fields below
$publisherId=13;
$Zone   = new XML_RPC_Value(
           array(
                'publisherId' => new XML_RPC_Value($publisherId,'int'),
                'zoneName' => new XML_RPC_Value('tuan zonename new4', 'string'),
                'type' => new XML_RPC_Value(4, 'int'),
                'width' => new XML_RPC_Value('300', 'int'),
                'height' => new XML_RPC_Value('50', 'int'),
                'comments' => new XML_RPC_Value('comments here', 'string'),
                ),
                'struct'
                );
$aParams    = array(
            new XML_RPC_Value($sessionId, 'string'),
            $Zone
            );
$oMessage   = new XML_RPC_Message('addZone', $aParams);
$oClient    = new XML_RPC_Client($zoneXmlRpcWebServiceUrl, $xmlRpcHost);
$oResponse  = $oClient->send($oMessage);
$ZoneId   = returnXmlRpcResponseData($oResponse);
echo 'Zone with id: ' . $ZoneId . ' added <br>';
//--------------------------------------------------end insert zone


?>