.PHONY: prepare
prepare:
	cd ios; rm -rf ./Pods; pod install;

.PHONY: generate
generate:
	flutter pub run build_runner build --delete-conflicting-outputs