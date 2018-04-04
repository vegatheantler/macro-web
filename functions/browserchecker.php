<?php

function get_browser_name($user_agent)
{
    if (strpos($user_agent, 'Opera') || strpos($user_agent, 'OPR/')) return 'Opera';
    elseif (strpos($user_agent, 'Edge')) return 'Edge';
    elseif (strpos($user_agent, 'Chrome')) return 'Chrome';
    elseif (strpos($user_agent, 'Safari')) return 'Safari';
    elseif (strpos($user_agent, 'Firefox')) return 'Firefox';
    elseif (strpos($user_agent, 'MSIE') || strpos($user_agent, 'Trident/7')) return 'Internet Explorer';

    return 'Other';
}

// Usage:

$pogi = get_browser_name($_SERVER['HTTP_USER_AGENT']);


if ($pogi == "Internet Explorer" || $pogi == "Opera" || $pogi == "Edge"){
  echo "Sorry this web application is compatible only in firefox and google chrome";
  echo "<br>Please upgrade your browser.";
  echo "<br>Link:";
  echo "<br>Chome: <a href='https://www.google.com.ph/chrome/'>Click me</a>";
  echo "<br>Firefox: <a href='https://www.mozilla.org/en-US/firefox/new/'>Click me</a>";
  exit;
}
?>
