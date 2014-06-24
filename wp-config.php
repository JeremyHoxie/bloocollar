<?php
# Database Configuration
define( 'DB_NAME', 'wp_jeremyhoxie' );
define( 'DB_USER', 'jeremyhoxie' );
define( 'DB_PASSWORD', 'b11t7Je9IYQ2cl2N0kgX' );
define( 'DB_HOST', '69.164.201.47' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY',         'K5]LtIBEUh<7!%+B>=#zQAnEbBQze!Tlf=a[B,HMF~NHj.sPK2k+;$j-fb~MVYi@');
define('SECURE_AUTH_KEY',  'aK0~afEG>>U-|}IAJT@ifQ~-2WixLoK](F2yl)f[NO-jgOdS|JNww5g=Kz)4-?L(');
define('LOGGED_IN_KEY',    '+s;yIR2kyTm_k-~z-(;S0,_KV7t3.[M7F_6!+$=:AUMJ}gaO5Z_js`0^rf|@lK[0');
define('NONCE_KEY',        '.1BE|h+J?ajmJKnMuqN]8Nk}V(1YeFMxMZvYq+5~!U/k`*foT|Kn. $+^-P(S+P*');
define('AUTH_SALT',        'JB+DWZ/-YZddVgqIP-=UK-CpLW.~V@<|+Q,/Lhzv*43.v2Y0y~uw+O+F9/y`>K;x');
define('SECURE_AUTH_SALT', 'rh4<uoH?rWCr(sJh-=Ix|lXq*R],NPmz5qq}<,cf@0!tze{UlbFm(LB#yd2F%:.W');
define('LOGGED_IN_SALT',   'e_WR{[9DaW3[w3jU;3Kg>d;PXd/ <i1e:EM,{7Kh<ZhB/f9)5`%{L?8jTNCh4MX_');
define('NONCE_SALT',       'S^fTbKKB+@]yx#7%J6V(7X=+zwIw!suQg}SqNm0-.[#_y!-eA=3Y&-KHSj~ITjxG');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'jeremyhoxie' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

define( 'PWP_ROOT_DIR', '/nas/wp' );

define( 'WPE_APIKEY', '88818167b3e090f8f4eaab15d578655e30a8b6a1' );

define( 'WPE_FOOTER_HTML', "" );

define( 'WPE_CLUSTER_ID', '2209' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_CACHE_TYPE', 'generational' );

define( 'WPE_CDN_DISABLE_ALLOWED', false );

define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISALLOW_FILE_MODS', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

define( 'WP_POST_REVISIONS', FALSE );

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

umask(0002);

$wpe_cdn_uris=array ();

$wpe_no_cdn_uris=array ();

$wpe_content_regexs=array ();

$wpe_all_domains=array (  0 => 'jeremyhoxie.wpengine.com',);

$wpe_varnish_servers=array (  0 => 'pod-2209',);

$wpe_special_ips=array ();

$wpe_ec_servers=array ();

$wpe_largefs=array ();

$wpe_netdna_domains=array ();

$wpe_netdna_domains_secure=array ();

$wpe_netdna_push_domains=array ();

$wpe_domain_mappings=array ();

$memcached_servers=array ();

define('WP_SITEURL','http://jeremyhoxie.wpengine.com');

define('WP_HOME','http://jeremyhoxie.wpengine.com');
define('WPLANG','');

# WP Engine ID


# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
