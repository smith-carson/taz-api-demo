<?php

require('vendor/autoload.php');

function getStatus ($xml)
{
    /** @var SimpleXMLElement $responseXML */
    $responseXML = simplexml_load_string($xml);

    /** @var SimpleXMLElement $orderIdNode */
    $orderIdNode = $responseXML->xpath("//BackgroundReports/BackgroundReportPackage/OrderId")[0];
    /** @var SimpleXMLElement $statusNode */
    $statusNode = $responseXML->xpath("//BackgroundReports/BackgroundReportPackage/ScreeningStatus/OrderStatus")[0];

    return [strval($orderIdNode), strval($statusNode)];
}

// Get ENV variables
$dotEnv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotEnv->safeLoad();
$userId = $_ENV['USER_ID'];
$password = $_ENV['USER_PASSWORD'];
$url = $_ENV['TAZ_URL'];

$xmlCheck = file_get_contents('check-status.xml');
$xmlCheck = str_replace('{{userId}}', $userId, $xmlCheck);
$xmlCheck = str_replace('{{password}}', $password, $xmlCheck);

$startTime = microtime(true);

// Send XML to TAZ
$client = new \GuzzleHttp\Client([
    'base_uri' => $url,
    'timeout' => 2.0
]);
try {
    [$orderId, $status] = [122251, 'x:pending'];

    $xmlCheck = str_replace('{{orderId}}', $orderId, $xmlCheck);
    $count = 1;
    while ($status === 'x:pending') {
        $response = $client->post("/send/interchange", [
            'form_params' => [
                'request' => $xmlCheck
            ],
        ]);
        echo PHP_EOL, "CHECK {$count}:", PHP_EOL;
        $count++;
        [$orderId, $status] = getStatus($response->getBody());
        $lastResponse = $response->getBody();
        sleep(1);
    }

    echo $lastResponse, PHP_EOL;
    $endTime = microtime(true);
    $timeDiff = $endTime - $startTime;

    echo PHP_EOL, PHP_EOL, 'Time to become ready' . $timeDiff, PHP_EOL;

} catch (\GuzzleHttp\Exception\ClientException $e) {
    echo "ERROR:", PHP_EOL;
    echo $e->getMessage();
}
