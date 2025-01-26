MODULE="github.com/gopaytech/istio-upgrade-proto"

.PHONY: build.proto
build.proto:
	mkdir -p ./upgrade
	protoc \
		--proto_path=. \
		--go_out=./upgrade \
		--go_opt=module=${MODULE} \
		./*.proto
	protoc \
		--proto_path=. \
		--python_out=./upgrade \
		./*.proto
