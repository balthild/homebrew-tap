cask "calendar-shouter" do
	name "CalendarShouter"
	desc "Intrusive, non-overlookable alerts for your scheduled events"
	homepage "https://github.com/balthild/CalendarShouter"

	version "0.1.1"
	sha256 "3afe646b7ad053e4afb28182d26528eb5874d10d9949c98a8f5c065a1696034d"
	url "https://github.com/balthild/CalendarShouter/releases/download/v#{version}/CalendarShouter-v#{version}.zip"

	depends_on arch: :arm64
	depends_on macos: :sequoia

	app "CalendarShouter.app"

	preflight_steps do
		run "xattr", args: [
			"-rd", "com.apple.quarantine",
			"{{staged_path}}/CalendarShouter.app",
		]
	end
end
