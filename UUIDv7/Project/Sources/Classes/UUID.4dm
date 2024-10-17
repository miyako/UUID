Class extends _CLI

Class constructor($controller : 4D:C1709.Class)
	
	Super:C1705("uuid"; $controller)
	
	If (OB Instance of:C1731($ini; 4D:C1709.File))
		If ($ini.exists)
			This:C1470.ini:=This:C1470.expand($ini).path
		End if 
	End if 
	
Function terminate()
	
	This:C1470.controller.terminate()
	
Function run($php : Variant)->$this : cs:C1710.UUID
	
	$this:=This:C1470
	
	Case of 
		: (Value type:C1509($php)=Is text:K8:3)
			
			$command:=This:C1470.escape(This:C1470.executablePath)
			$command+=" -r"
			$command+=" "+This:C1470.escape($php)
			
		: (Value type:C1509($php)=Is object:K8:27) && (OB Instance of:C1731($php; 4D:C1709.File)) && ($php.exists)
			
			$command:=This:C1470.escape(This:C1470.executablePath)
			$command+=" -f"
			$command+=" "+This:C1470.escape(This:C1470.expand($php).path)
			
		Else 
			return 
	End case 
	
	If (This:C1470.ini#Null:C1517)
		$command+=" -c "+This:C1470.escape(This:C1470.ini)
	Else 
		$command+=" -n "
	End if 
	
	This:C1470.controller.execute($command)
	This:C1470.controller.worker.wait()
	