//%attributes = {}
var $UUID : cs:C1710.UUID

$UUID:=cs:C1710.UUID.new()

$UUIDv7:=$UUID.v7()
$UUIDv6:=$UUID.v6()
$UUIDv5:=$UUID.v5("dns"; "www.4d.com")  //ns:dns,url,oid,x500
$UUIDv4:=$UUID.v4()
$UUIDv3:=$UUID.v3("dns"; "www.4d.com")  //ns:dns,url,oid,x500
$UUIDv1:=$UUID.v1()


