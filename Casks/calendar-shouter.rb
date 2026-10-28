cask "calendar-shouter" do
	name "CalendarShouter"
	desc "Intrusive, non-overlookable alerts for your scheduled events"
	homepage "https://github.com/balthild/CalendarShouter"

	version "0.2.0"
	sha256 "884213ee427e4aa0b410d7e7d2483cdb1029ef631a46d96008f8b6bea892afd9"
	url "https://github.com/balthild/CalendarShouter/releases/download/v#{version}/CalendarShouter-v#{version}.dmg"

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
