![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
[![license](https://img.shields.io/github/license/miyako/UUID)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/UUID/total)

# UUID

## dependencies.json

 ```json
{
	"dependencies": {
		"UUID": {
			"github": "miyako/UUID",
			"version": "latest"
		}
	}
}
```

```4d
var $UUID : cs.UUID.UUID
$UUID:=cs.UUID.UUID.new()

$UUIDv7:=$UUID.v7()
$UUIDv6:=$UUID.v6()
$UUIDv5:=$UUID.v5("dns"; "www.4d.com")  //ns:dns,url,oid,x500
$UUIDv4:=$UUID.v4()
$UUIDv3:=$UUID.v3("dns"; "www.4d.com")  //ns:dns,url,oid,x500
$UUIDv1:=$UUID.v1()
```

<img src="https://github.com/user-attachments/assets/fadc2741-db78-4d9e-bbed-b031b0ccfcc4" height="300" width=auto />

the [CLI](https://github.com/miyako/go-uuid/blob/master/main.go) uses [gofrs/uuid](https://github.com/miyako/go-uuid).

## Go Build

```
GOOS=darwin GOARCH=arm64 go build -o uuid-arm main.go
GOOS=darwin GOARCH=amd64 go build -o uuid-amd main.go
lipo -create uuid-arm uuid-amd -output uuid
GOOS=windows GOARCH=amd64 go build -o uuid.exe main.go
```

## CLI

```
uuid -mode 7 //this is the default
uuid -mode 6
uuid -mode 5 -ns dns -name www.4d.com
uuid -mode 4
uuid -mode 3 -ns dns -name www.4d.com
uuid -mode 1
```
