<?php
if($_POST){
	$key=trim($_POST['keyword']);
	$typeb=trim($_POST['typea']);
	$return=array(array('key'=>0,'val'=>'请选择'));
    $file = fopen("zs_items.txt", "r");
    //$file = fopen($typeb.".txt", "r");
	
	if($key==''){
		while(!feof($file))
		{
			$line=fgets($file);

				$tmp=array(
					'key'=>0,
					'val'=>$line
				);
				array_push($return,$tmp);

		}
	}else{
		while(!feof($file))
		{
			$line=fgets($file);
			$line=str_replace(array("\r\n", "\r", "\n"), "", $line);
			$pos=strpos($line,$key);
			if($pos!==false){
				//$txts=explode(';',$line);
				//if(count($txts)==1){
					$tmp=array(
						'key'=>0,
						'val'=>$line
					);
					array_push($return,$tmp);
				//}
			}
		}		
	}
    fclose($file);
	echo(json_encode($return));
}else{
	$return=array(array('key'=>0,'val'=>'请选择'));
	echo(json_encode($return));
}