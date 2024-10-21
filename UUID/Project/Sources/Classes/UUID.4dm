Class extends _CLI

Class constructor()
	
	Super:C1705("uuid"; cs:C1710._UUID_Controller)
	
Function _terminate()
	
	This:C1470.controller.terminate()
	
Function _trim($in : Text) : Text
	
	ARRAY LONGINT:C221($pos; 0)
	ARRAY LONGINT:C221($len; 0)
	If (Match regex:C1019("^(\\S+)$"; $in; 1; $pos; $len))
		return Substring:C12($in; $pos{1}; $len{1})
	End if 
	
	return $in
	
Function v7() : Text
	
	return This:C1470._v7641(7)
	
Function v6() : Text
	
	return This:C1470._v7641(6)
	
Function v4() : Text
	
	return This:C1470._v7641(4)
	
Function v1() : Text
	
	return This:C1470._v7641(1)
	
Function v5($ns : Text; $name : Text) : Text
	
	return This:C1470._v53(5; $ns; $name)
	
Function v3($ns : Text; $name : Text) : Text
	
	return This:C1470._v53(3; $ns; $name)
	
Function _v7641($v : Integer) : Text
	
	$command:=This:C1470.escape(This:C1470.executablePath)
	$command+=" -mode "+String:C10($v)
	
	This:C1470.controller.execute($command)
	This:C1470.controller.worker.wait()
	
	return This:C1470._trim(This:C1470.data)
	
Function _v53($v : Integer; $ns : Text; $name : Text) : Text
	
	$command:=This:C1470.escape(This:C1470.executablePath)
	$command+=" -mode "+String:C10($v)
	$command+=" -ns "+This:C1470.quote($ns)
	$command+=" -name "+This:C1470.quote($name)
	
	This:C1470.controller.execute($command)
	This:C1470.controller.worker.wait()
	
	return This:C1470._trim(This:C1470.data)