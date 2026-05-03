<?php
require __DIR__ . '/../vendor/autoload.php';

use GuzzleHttp\Client;

$client = new Client();
$response = $client->get('https://example.com');
echo $response->getStatusCode();
