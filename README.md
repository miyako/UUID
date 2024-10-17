# UUIDv7

use [gofrs/uuid](https://github.com/gofrs/uuid) as reference implementation.

## Go



```
GOOS=darwin GOARCH=arm64 go build -o uuid-arm main.go
GOOS=darwin GOARCH=amd64 go build -o uuid-amd main.go
lipo -create uuid-arm uuid-amd -output uuid
```
