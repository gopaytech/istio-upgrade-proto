.PHONY: build.proto
build.proto:
	mkdir -p model
	protoc --proto_path=./proto --go_out=paths=source_relative:model ./proto/*.proto