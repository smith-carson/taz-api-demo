<?php

$fileName = $argv[1];
if (empty($fileName) || !file_exists($fileName)) {
    echo "Please provide an existent sample file name";
    exit(1);
}

$xml = file_get_contents($fileName);

/** @var SimpleXMLElement $responseXML */
$responseXML = simplexml_load_string($xml);

/** @var SimpleXMLElement $orderIdNode */
$orderIdNode = $responseXML->xpath("//BackgroundReports/BackgroundReportPackage/OrderId")[0];

$statusNode = $responseXML->xpath("//BackgroundReports/BackgroundReportPackage/ScreeningStatus/OrderStatus")[0];

var_export(strval($orderIdNode));
var_export(strval($statusNode));