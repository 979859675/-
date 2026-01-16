<?php
error_reporting(0);
include 'user/config.php';
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title><?php echo $gmbt; ?>GM后台</title>
	<meta name="keywords" content="<?php echo $gmbt; ?>GM后台" />
	<meta name="description" content="<?php echo $gmbt; ?>GM后台" /> 

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>

	<div class="limiter">
		<div class="bg container-login100">
			<div class="wrap-login100">								
				<span class="login100-form-title"><?php echo $gmbt; ?>后台</span>								
      <div class="modal-body">
            <div class="form-group">
                <div class="form-group">
                    <div class="form-group">
  <div><span></span><input type='password' class="form-control" placeholder="输入GM校验码" value='' id='checknum'></div>
  
                        <select id="qu" name="qu" class="form-control selectpicker" data-size="5" title="请选择区服" required>
								<?php
							  foreach($quarr as $k=>$v){
								  echo '<option value="'.$k.'">'.$v[name].'</option>';
							  }
							  ?>
                        </select>
                    </div>
                </div>
				 <hr/>
  <div><span></span><input type='text' value='' id='uid' class="form-control" placeholder='请输入角色名'>
  <input type='text' value='' id='upass' class="form-control" placeholder='请输入授权密码。'>
  <select id="vip" name="vip" class="selectpicker show-tick form-control" data-live-search="true" data-size="5" title="选物品">
								<?php
							  foreach($yzfvip as $k=>$v){
								  echo '<option value="'.$k.'">'.$v.'</option>';
							  }
							  ?>
  </select>  
  <input type='button' class="btn btn-primary btn-block" value='添加授权用户' id='addvipbtn'>
  <input type='button' class="btn btn-primary btn-block" value='修改VIP权限' id='editvip'>
  <input type='button' class="btn btn-primary btn-block" value='修改玩家密码' id='editpwd'>
  <input type='button' class="btn btn-danger btn-block" value='删除玩家权限' id='delvip'>  
  </div>
  <hr/>
 <div><span></span>
 <input type='number' id='chargenum'class="form-control selectpicker"  placeholder='请输入充值元宝数量'>
 <input type='button'class="btn btn-danger btn-block"  value='充值(充值后小退在上线即可)' id='chargebtn'></div> 
 <div><span>充值提醒: </span><span style='color:red'>注意：非NPC,充值后小退在上线即可！</span><td>
    <hr/>
 
 <input type='number' id='chargenum1'class="form-control selectpicker"  placeholder='请输入充值元宝数量'>
 <input type='button'class="btn btn-danger btn-block"  value='充值(土城充值使者领取,每个端有所差异)' id='chargebtn1'></div> 
  <hr/>
 <div><span>充值提醒: </span><span style='color:red'>注意：这个是通过土城NPC领取的，有些端如果是灵符等自定义可能无效！</span><td>
  
 <hr/>
     <div>
  <input type='text' value='' id='searchipt' class="form-control" placeholder='物品搜索'>	 
  <select id="mailid" name="mailid" class="selectpicker show-tick form-control" data-live-search="true" data-size="5" title="选物品">
    <?php
		$file = fopen("user/zs_items.txt", "r");
		while(!feof($file))
		{
			$line=fgets($file);
			echo '<option value="'.$line.'">'.$line.'</option>';
		}
		fclose($file);
    ?>
            </select></div>
        <div><span></span><input type='text' value='' id='mailnum' class="form-control"  placeholder='请输入发放数量'></div>
    <div><input type='button'  class="btn btn-primary btn-block"  value='发送邮件物品' id='mailbtn'></div>
 <hr/>
<span>邮件提醒: </span><span style='color:red'>发物品邮件最多5个！发送后邮件领取。</span>	
</div>

 <hr/>

<select class="form-control selectpicker" id="chargenum2" name="num">
<option value='11' desc=''>查封(预留)</option>
<option value='22' desc=''>解封(预留)</option>
</select>
<input type='button'class="btn btn-primary btn-block"  value='修改属性' id='chargebtn2'>
<hr/>

<div><input type='button'class="btn btn-danger btn-block"  value='初始化' id='chargebtn3'></div> 
 <hr/>
<span>提醒: </span><span style='color:red'>首次使用请先初始化！</span>	
<hr/>

<div>
	
</div>

<div class="txt1 text-center">
		<span><?php echo $gmbt; ?> By：手游源码网 www.syymw.com</span>
</div>
<script src='js/jquery-1.7.2.min.js'></script>
<script>
  var checknum='';
  var uid='';
  var qu=$('#qu').val();
  $('#checknum').change(function(){
	  checknum=$(this).val();
  });
  $('#uid').change(function(){
	  uid=$.trim($(this).val());
  });
  $('#qu').change(function(){
	  qu=$.trim($(this).val());
  });
  
  
  $('#addvipbtn').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var upass=$('#upass').val();
	  if(upass==''){
		  alert('请输入授权密码。');
		  return false;
	  }	 
	  var vip=$('#vip').val();
	  if(vip==''){
		  alert('请选择权限。');
		  return false;
	  }	  
	  $.ajax({
		  url:'user/gmquery.php',
		  type:'post',
		  'data':{type:'addvip',checknum:checknum,uid:uid,qu:qu,upass:upass,vip:vip},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });
  $('#editvip').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var upass=$('#upass').val();
	  if(upass==''){
		  alert('请输入授权密码。');
		  return false;
	  }	 
	  var vip=$('#vip').val();
	  if(vip==''){
		  alert('请选择权限。');
		  return false;
	  }	  
	  $.ajax({
		  url:'user/gmquery.php',
		  type:'post',
		  'data':{type:'editvip',checknum:checknum,uid:uid,qu:qu,upass:upass,vip:vip},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });
   $('#editpwd').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var upass=$('#upass').val();
	  if(upass==''){
		  alert('请输入授权密码。');
		  return false;
	  }	 
	  var vip=$('#vip').val();
	  if(vip==''){
		  alert('请选择权限。');
		  return false;
	  }	  
	  $.ajax({
		  url:'user/gmquery.php',
		  type:'post',
		  'data':{type:'editpwd',checknum:checknum,uid:uid,qu:qu,upass:upass,vip:vip},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });


  
  $('#delvip').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('请输入需要取消授权的账号。');
		  return false;
	  }
	  var upass=$('#upass').val();
	  if(upass==''){
		  alert('请输入以前授权时候的密码。');
		  return false;
	  }
	  var vip=$('#vip').val();
	  if(vip==''){
		  alert('请选择权限。');
		  return false;
	  }	  
	  $.ajax({
		  url:'user/gmquery.php',
		  type:'post',
		  'data':{type:'delvip',checknum:checknum,uid:uid,qu:qu,upass:upass,vip:vip},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });
  $('#chargebtn').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var chargenum=$('#chargenum').val();
	  $.ajax({
		  url:'user/api.php',
		  type:'post',
		  'data':{type:'charge',checknum:checknum,uid:uid,num:chargenum,qu:qu},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });
  $('#chargebtn1').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var chargenum1=$('#chargenum1').val();
	  $.ajax({
		  url:'user/api.php',
		  type:'post',
		  'data':{type:'charge1',checknum:checknum,uid:uid,num:chargenum1,qu:qu},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  }); 
  $('#mailbtn').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }
	  var itemid=$('#mailid').val();
	  if(itemid==''){
		  alert('请选择物品。');
		  return false;
	  }
	  var mailnum=$('#mailnum').val();
	  if(mailnum=='' || isNaN(mailnum)){
		  alert('数量不能为空。');
		  return false;
	  }
	  if(mailnum<1 || mailnum>999999){
		  alert('数量范围:1-999999。');
		  return false;
	  }
	  $.ajax({
		  url:'user/api.php',
		  type:'post',
		  'data':{type:'mail',checknum:checknum,uid:uid,item:itemid,num:mailnum,qu:qu},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });	  
  });
   $('#chargebtn2').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  if(uid==''){
		  alert('角色名不能为空。');
		  return false;
	  }

	  var chargenum2=$('#chargenum2').val();

	  $.ajax({
		  url:'user/api.php',
		  type:'post',
		  'data':{type:'charge2',checknum:checknum,uid:uid,num:chargenum2,qu:qu},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  }); 
   $('#chargebtn3').click(function(){
	  if(checknum==''){
		  alert('请输入GM校验码。');
		  return false;
	  }
	  var msg = "您真的确定要初始化吗？\n\n只在首次使用时候初始化即可\n\n是否确认继续初始化！！\n\n请确认！";
	  if (confirm(msg)==true){ 	
	  $.ajax({
		  url:'user/api.php',
		  type:'post',
		  'data':{type:'charge3',checknum:checknum,qu:qu},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  console.log('data',data);
			  alert(data.info);
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
	  
	  }else{ 
  	  return false;   
	  //alert('考虑考虑');
 }	  
	  
  }); 
  
  $('#searchipt').on('change',function(){
	  var keyword=$(this).val();
	  $.ajax({
		  url:'user/itemquery.php',
		  type:'post',
		  'data':{keyword:keyword,typea:'zs_items'},  
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  if(data){
				  $('#mailid').html('');
				for (var i in data){
				  $('#mailid').append('<option value="'+data[i].val+'" data-desc="'+data[i].desc+'">'+data[i].val+'</option>');
				}
			  }else{
				  $('#mailid').html('<option value="0" data-desc="未找到">未找到</option>');
			  }
			  $('#maildesc').html('请选择');
		  },
		  error:function(){
			  alert('操作失败');
		  }
	  });
  });
  $('#mailid').live('change',function(){
	  console.log('test');
	  var desc=$('#mailid option:selected').data('desc');
	  $('#maildesc').html(desc);
  });  
 
</script>
</body>
</html>