<?php
session_start();
error_reporting(0);
header("Content-type: text/html; charset=utf-8");
ini_set('date.timezone','Asia/Shanghai');
include 'user/config.php';
?>

<table class="layui-table">
<tbody>
<?php
if ($_GET['go']=='report') {
$quid  = $_GET['qu'];
	if($quid==''){
		echo "区号错误";exit;
	}
	$qu=$quarr[$quid];
	if(!$qu['db_ip']){
		echo "区配置不存在";exit;
	}
	$gmcode=trim($_GET['gm']);
	if($gmcode!=$gmcodec){
		echo "GM查看码错误";exit;
	}
	if(md5($key)!=$gmkey){
		echo $eff;exit;
	}	
$mysqli = new mysqli($qu['db_ip'],$qu['db_user'],$qu['db_pswd'],null,$qu['db_port']);
$sq1="SELECT * FROM mir3.stditems ";
  $ss = $mysqli->query($sq1);
	if(!$ss){
		exit("链接数据库错误".$mysqli->error);
	}
 while ($row_Recordset1 = $ss->fetch_array()){
?>  
<tr>
	<td><?php echo iconv("gbk//TRANSLIT","UTF-8",$row_Recordset1['iname']); ?></td>
</tr>
 <?php  }} ?>
</tbody>
</table>

