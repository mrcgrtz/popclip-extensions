<?php
mb_internal_encoding('UTF-8');
$input = getenv('POPCLIP_TEXT');
$length = mb_strlen($input);
$symbol = getenv('POPCLIP_OPTION_SYMBOL');
echo str_repeat($symbol, $length);
