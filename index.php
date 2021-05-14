<?php

require('vendor/autoload.php');

// Get XML to process
$fileName = $argv[1];
$orderId = $argv[2] ?: '';
if (empty($fileName) || !file_exists($fileName)) {
    echo "Please provide an existent sample file name";
    exit(1);
}

// Get ENV variables
$dotEnv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotEnv->safeLoad();
$userId = $_ENV['USER_ID'];
$password = $_ENV['USER_PASSWORD'];
$url = $_ENV['TAZ_URL'];

// Prepare XML to send to TAZ works
$xml = file_get_contents($fileName);
$xml = str_replace('{{userId}}', $userId, $xml);
$xml = str_replace('{{password}}', $password, $xml);

$xml = str_replace('{{orderId}}', $orderId, $xml);

// Send XML to TAZ
$client = new \GuzzleHttp\Client([
    'base_uri' => $url,
    'timeout' => 2.0
]);
try {
    $response = $client->post("/send/interchange", [
        'form_params' => [
            'request' => $xml
        ],
    ]);
    echo "OK:", PHP_EOL;
    echo $response->getBody();
} catch (\GuzzleHttp\Exception\ClientException $e) {
    echo "ERROR:", PHP_EOL;
    echo $e->getMessage();
}
