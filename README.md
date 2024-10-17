# UUID

use [gofrs/uuid](https://github.com/miyako/go-uuid) as reference implementation.

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
