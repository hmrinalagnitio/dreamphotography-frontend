<?php

return  [
    'client_id' => 'ASHgTgwXbk2yZrmGET7B3Eyd9M7m3cYRPuaUIgaO8pixsu3_JWGEWIp9JLrz5PGocSXMPCkOP1MKp1sg',
    'secret'    => 'EMIhD41SRpLn7CunmuG1xDnwpeRjCKll_KGzDLrkwDHzAUd1wbp9', 
    'settings'  => [
        'mode' => 'sanbox', 
        'http.ConnectionTimeout' => 1000, 
        'log.LogEnabled' => true, 
        'log.FileNamme' => storage_path().'/logs/paypal.log',
        'log.LogLevel' => 'FINE', 

    ], 
];




