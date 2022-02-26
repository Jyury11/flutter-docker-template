.PHONY: help
help: ## help for telmei-go
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# android
.PHONY: android
android: ## android_studio
	@android_studio

# doctor
.PHONY: doctor
doctor: ## flutter doctor
	@flutter doctor

# use-desktop
.PHONY: use-desktop
use-desktop: ## flutter config --enable-xxx-desktop
	@flutter config --enable-linux-desktop
	@flutter config --enable-windows-desktop
	@flutter config --enable-macos-desktop