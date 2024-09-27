.PHONY: build.proto
build.proto:
	protoc --go_out . ./proto/*.proto