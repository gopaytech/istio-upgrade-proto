.PHONY: build.proto
build.proto:
	protoc --proto_path=./proto --go_out=paths=source_relative:. ./proto/*.proto