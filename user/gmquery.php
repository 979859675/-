<?php
session_start();
error_reporting(0);
header("Content-type: text/html; charset=utf-8");
ini_set('date.timezone','Asia/Shanghai');
$time=time();
if(abs($time-(int)$_SESSION['lasttime'])<5){
		$return=array(
			'errcode'=>1,
			'info'=>'刷太快了',
		);
		exit(json_encode($return));	
}
$_SESSION['lasttime']=$time;
if($_POST){
	include 'config.php';
	$gmcode=trim($_POST['checknum']);
	if($gmcode!=$gmcodeb){
		$return=array(
			'errcode'=>1,
			'info'=>'GM码错误',
		);
		exit(json_encode($return));
	}
	if(md5($key)!=$gmkey){
		$eff = urldecode($sa);
		$return=array(
			'errcode'=>1,
			'info'=>$eff,
		);
		exit(json_encode($return));
	}	
	$quid=trim($_POST['qu']);
	if($quid==''){
		$return=array(
			'errcode'=>1,
			'info'=>'区号错误',
		);
		exit(json_encode($return));
	}
	$qu=$quarr[$quid];
	if(!$qu['db_ip']){
		$return=array(
			'errcode'=>1,
			'info'=>'区配置不存在',
		);
		exit(json_encode($return));
	}
//	$userid=trim($_POST['uid']);
	$userid=$_POST['uid'];
/*	if($userid==''){
		$return=array(
			'errcode'=>1,
			'info'=>'账号错误',
		);
		exit(json_encode($return));
	}
	*/
$act=$_POST['type'];
//$user_IP = ($_SERVER["HTTP_VIA"]) ? $_SERVER["HTTP_X_FORWARDED_FOR"] : $_SERVER["REMOTE_ADDR"];
//$user_IP = ($user_IP) ? $user_IP : $_SERVER["REMOTE_ADDR"];	
$date=date('Y-m-d H:i:s');

//$mysqli=new mysqli($qu['db_ip'],$qu['db_user'],$qu['db_pswd'],$qu['db_name'],$qu['db_port']);
	

if(get_extension_funcs('mysqli')==false){
		$return=array(
			'errcode'=>1,
			'info'=>'mysqli扩展未启用!',
		);
		exit(json_encode($return));
}
$mysqli=new mysqli($qu['db_ip'],$qu['db_user'],$qu['db_pswd'],null,$qu['db_port']);
if($mysqli->connect_error){
		$return=array(
			'errcode'=>1,
			'info'=>'数据库连接失败,请检查config.php里的游戏数据库!',
		);
		exit(json_encode($return));
}
if (!$mysqli->set_charset("latin1")) {
		$return=array(
			'errcode'=>1,
			'info'=>'设置数据库编码Latin1错误: %s\n',
		);
		exit(json_encode($return));
}


	
	switch($act){
		
			case 'charge':
	
				$num=intval($_POST['num']);
				if($num<1 || $num > 999999){
					$return=array(
						'errcode'=>1,
						'info'=>'充值范围：1-999999',
					);
					exit(json_encode($return));
				}					

					$return=array(
						'errcode'=>1,
						'info'=>'功能暂未开发',
					);
					exit(json_encode($return));	

	
				
				break;

				
				
				
				
			case 'charge1':
	
				$num=intval($_POST['num']);
				if($num<1 || $num > 999999){
					$return=array(
						'errcode'=>1,
						'info'=>'充值范围：1-999999',
					);
					exit(json_encode($return));
				}					

					$return=array(
						'errcode'=>1,
						'info'=>'功能暂未开发',
					);
					exit(json_encode($return));	
	
				
				break;				
				
				
				
				
				
				
				
				
				
			case 'mail':
				$itemid=intval($_POST['item']);
				$num = intval($_POST['num']);
				
					$return=array(
						'errcode'=>1,
						'info'=>'功能暂未开发',
					);
					exit(json_encode($return));				
		
				
				
				break;

			case 'charge2':
				$itemid=intval($_POST['item']);
				$num = intval($_POST['num']);
				
					$return=array(
						'errcode'=>1,
						'info'=>'功能暂未开发',
					);
					exit(json_encode($return));				
		
				
				
				break;

			case 'charge3':

				$itemid=intval($_POST['item']);
				$num = intval($_POST['num']);
				
					$return=array(
						'errcode'=>1,
						'info'=>'功能暂未开发',
					);
					exit(json_encode($return));				

		
				
				
				break;







				
		case 'addvip':
				$vipfile='vip_'.$quid.'.json';
				$fp = fopen($vipfile,"a+");
			    $upass=trim($_POST['upass']);//密码
			    $vip=trim($_POST['vip']);//权限
			    if(!$upass){
				$return=array(
					'errcode'=>1,
					'info'=>'请输入授权密码',
				   );
				exit(json_encode($return));
			     }
			    if(!$vip){
				$vip=array(
					'errcode'=>1,
					'info'=>'请选择权限',
				   );
				exit(json_encode($return));
			     }				 
				$sqxx = mima($userid,$upass); 
				if(filesize($vipfile)>0){
					$str = fread($fp,filesize($vipfile));
					fclose($fp);
					//$vipjson=json_decode($str);
					$vipjson=json_decode($str,true);
					if($vipjson==null){
						$vipjson=array();
					}
				}else{
					$vipjson=array();
				}
			if (!$vipjson[$userid]) {
				$vipjson[$userid] = array('pwd' => $sqxx, 'level' => $vip, 'qu' => $quid);
				file_put_contents($vipfile, json_encode($vipjson, 320));
				$log='log/log_addvip_'.date('Y-m-d').'.log';
				file_put_contents($log,$date."\t".$quid."区 \t"."玩家:".$userid."\t"."权限:".$vip."\t"."成功!!"."\t IP:".$user_IP.PHP_EOL,FILE_APPEND);
					$return=array(
						'errcode'=>1,
						'info'=>'加入VIP成功'.$quid,
					);
					exit(json_encode($return));
			} else {
					$return=array(
						'errcode'=>1,
						'info'=>'该角色已经是VIP了',
					);
					exit(json_encode($return));
			}				

				break;
			
		case 'editvip':
				$vipfile='vip_'.$quid.'.json';
				$fp = fopen($vipfile,"a+");
			    $vip=trim($_POST['vip']);//权限
			    if(!$vip){
				$vip=array(
					'errcode'=>1,
					'info'=>'请选择权限',
				   );
				exit(json_encode($return));
			     }				 
				if(filesize($vipfile)>0){
					$str = fread($fp,filesize($vipfile));
					fclose($fp);
					//$vipjson=json_decode($str);
					$vipjson=json_decode($str,true);
					if($vipjson==null){
						$vipjson=array();
					}
				}else{
					$vipjson=array();
				}
                    if ($vipjson[$userid]) {
                        $vipjson[$userid] = array('pwd' => $vipjson[$userid]['pwd'], 'level' => $vip, 'qu' => $quid);
                        file_put_contents($vipfile, json_encode($vipjson, 320));
						$log='log/log_editvip_'.date('Y-m-d').'.log';
						file_put_contents($log,$date."\t".$quid."区 修改"."\t"."玩家:".$userid."\t"."权限:".$vip."\t"."成功!!"."\t IP:".$user_IP.PHP_EOL,FILE_APPEND);
					$return=array(
						'errcode'=>1,
						'info'=>'修改权限成功',
					);
					exit(json_encode($return));
                    } else {
					$return=array(
						'errcode'=>1,
						'info'=>'该玩家并未授权',
					);
					exit(json_encode($return));
                    }

				break;
			
		case 'editpwd':
				$vipfile='vip_'.$quid.'.json';
				$fp = fopen($vipfile,"a+");
			    $upass=trim($_POST['upass']);//密码
			    if(!$upass){
				$return=array(
					'errcode'=>1,
					'info'=>'请输入授权密码',
				   );
				exit(json_encode($return));
			     }
			 
				$sqxx = mima($userid,$upass); 
				if(filesize($vipfile)>0){
					$str = fread($fp,filesize($vipfile));
					fclose($fp);
					//$vipjson=json_decode($str);
					$vipjson=json_decode($str,true);
					if($vipjson==null){
						$vipjson=array();
					}
				}else{
					$vipjson=array();
				}
                    if ($vipjson[$userid]) {
                        $vipjson[$userid] = array('pwd' => $sqxx, 'level' => $vipjson[$userid]['level'], 'qu' => $quid);
                        file_put_contents($vipfile, json_encode($vipjson, 320));
						$log='log/log_editpwd_'.date('Y-m-d').'.log';
						file_put_contents($log,$date."\t".$quid."区 修改"."\t"."玩家:".$userid."\t"."密码成功!!".$sqxx."\t IP:".$user_IP.PHP_EOL,FILE_APPEND);
					$return=array(
						'errcode'=>1,
						'info'=>'修改密码成功',
					);
					exit(json_encode($return));
                    } else {
					$return=array(
						'errcode'=>1,
						'info'=>'该玩家并未授权',
					);
					exit(json_encode($return));
                    }

		/*			
			if (!$vipjson[$userid]) {
				$vipjson[$userid] = array('pwd' => $sqxx, 'level' => $vip, 'qu' => $quid);
				file_put_contents($vipfile, json_encode($vipjson, 320));
				$log='log/log_addvip_'.date('Y-m-d').'.log';
				file_put_contents($log,$date."\t".$quid."区 \t"."玩家:".$userid."\t"."权限:".$vip."\t"."成功!!"."\t IP:".$user_IP.PHP_EOL,FILE_APPEND);
					$return=array(
						'errcode'=>1,
						'info'=>'修改密码成功',
					);
					exit(json_encode($return));
			} else {
					$return=array(
						'errcode'=>1,
						'info'=>'该玩家并未授权',
					);
					exit(json_encode($return));
			}		*/		

				break;
							
			
		case 'delvip':
				$vipfile='vip_'.$quid.'.json';
				$fp = fopen($vipfile,"a+");
				if(filesize($vipfile)>0){
					$str = fread($fp,filesize($vipfile));
					fclose($fp);
					$vipjson=json_decode($str,true);
					if($vipjson==null){
						$vipjson=array();
					}
				}else{
					$vipjson=array();
				}
                    if ($vipjson[$userid]) {
                        unset($vipjson[$userid]);
                        file_put_contents($vipfile, json_encode($vipjson, 320));
						$log='log/log_delvip_'.date('Y-m-d').'.log';
						file_put_contents($log,$date."\t".$quid."区 \t"."删除"."\t"."玩家:".$userid."\t"."权限成功!!"."\t IP:".$user_IP.PHP_EOL,FILE_APPEND);
					$return=array(
						'errcode'=>1,
						'info'=>'取消成功',
					);
					exit(json_encode($return));
                    } else {
					$return=array(
						'errcode'=>1,
						'info'=>'该玩家并未授权',
					);
					exit(json_encode($return));
                    }
				break;	
			
		default:
			$return=array(
				'errcode'=>1,
				'info'=>'数据错误',
			);
			exit(json_encode($return));
			break;
	}
}else{
	$return=array(//手游 源 码网www.sy ym w.com
		'errcode'=>1,
		'info'=>'提交错误',
	);
	exit(json_encode($return));
}