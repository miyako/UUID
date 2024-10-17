![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
[![license](https://img.shields.io/github/license/miyako/UUID)](LICENSE)

# UUID

<img src="https://github.com/user-attachments/assets/b59b9ac6-5f62-4bde-9ade-36d7977a5e25" height="400" width=auto />

## dependencies.json

 ```json
{
	"dependencies": {
		"bb-semaphore": {
			"github": "miyako/UUID",
			"version": "^1.0.1"
		}
	}
}
```

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
