default: clean release-linux release-windows release-macos

release-linux:
	# GNU ARM
	@cross build --release --target aarch64-unknown-linux-gnu
	@cross build --release --target armv7-unknown-linux-gnueabihf
	# GNU x86_64
	@cross build --release --target i686-unknown-linux-gnu
	@cross build --release --target x86_64-unknown-linux-gnu
	# MUSL ARM
	@cross build --release --target armv7-unknown-linux-musleabihf
	@cross build --release --target aarch64-unknown-linux-musl
	# MUSL x86_64
	@cross build --release --target i686-unknown-linux-musl
	@cross build --release --target x86_64-unknown-linux-musl

release-windows:
	# x86_64
	@cross build --release --target i686-pc-windows-gnu
	@cross build --release --target x86_64-pc-windows-gnu

release-macos:
	# ARM
	@cross build --release --target aarch64-apple-darwin
	# x86_64
	@cross build --release --target x86_64-apple-darwin

clean:
	rm -rf target
