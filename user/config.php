<?php
error_reporting(0);
header("Content-type: text/html; charset=utf-8");
ini_set('date.timezone','Asia/Shanghai');
session_start();
//==================================================
$key='// 版本 2022 Powered by 手游源码网 www.syymw.com 勿改';
//==================================================

	function login_post($url, $cookie, $post){
	$ch = curl_init(); //初始化curl模块
	curl_setopt($ch, CURLOPT_URL, $url); //登录提交的地址
	curl_setopt($ch, CURLOPT_HEADER, 0); //是否显示头信息
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); //是否自动显示返回的信息
	curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie); //设置cookie信息保存在指定的文件夹中
	curl_setopt($ch, CURLOPT_POST, 1); //以POST方式提交
	curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));//要执行的信息
	curl_exec($ch); //执行CURL
	curl_close($ch);
	}
	function mail_post($url, $cookie, $post){
	$ch = curl_init(); //初始化curl模块
	curl_setopt($ch, CURLOPT_URL, $url); //登录提交的地址
	curl_setopt($ch, CURLOPT_HEADER, 0); //是否显示头信息
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); //是否自动显示返回的信息
	curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie);//设置cookie信息保存在指定的文件夹中
	curl_setopt($ch, CURLOPT_POST, 1); //以POST方式提交
	curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));//要执行的信息
	curl_exec($ch); //执行CURL
	curl_close($ch);
	}

    $_SESSION['gmbt'] ='syymwCOM';
	$gmbt = '战神';  //标题	
	$gmcodeb = 'syymw.com';  //GM码主密码
	$gmcodec = 'syymw.com';  // 查看物品的 那个GM码
	$gmkey="75794ea50fce9098f009e8dd8614886a";
	$sa="%2F%2F%20%E7%89%88%E6%9C%AC%202023%20Powered%20by%20%E6%89%8B%E6%B8%B8%E6%BA%90%E7%A0%81%E7%BD%91%20www.syymw.com%20%E5%8B%BF%E6%94%B9";
	$disables=array();
    $title   = '手游源码网-GM邮件！';
    $content = '更多游戏请访问：www.syymw.com-站长QQ：1228689277';
	$yzfvip=array(//自行修改VIP权限
	'1'=>'VIP1只充值',   
	'2'=>'VIP2充值+邮件',
	);		
	
	$quarr=array(
		'1'=>array(
			'name'=>'手游源码网一区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),
      	'2'=>array(
			'name'=>'手游源码网二区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),
      	'3'=>array(
			'name'=>'手游源码网三区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),
        '4'=>array(
			'name'=>'手游源码网四区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),
        '5'=>array(
			'name'=>'手游源码网五区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),    
        '6'=>array(
			'name'=>'手游源码网六区',
			'db_ip'=>'127.0.0.1',
			'db_port'=>3306,
			'db_name'=>'mir3',
			'db_user'=>'root',
			'db_pswd'=>'syymw.com',
			'db_name2'=>'gamedata'
		),      
	);

	

	
include_once 'conn.php';	