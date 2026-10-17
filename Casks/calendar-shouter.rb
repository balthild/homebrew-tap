cask "calendar-shouter" do
	name "CalendarShouter"
	desc "Intrusive, non-overlookable alerts for your scheduled events"
	homepage "https://github.com/balthild/CalendarShouter"

	version "0.1.0"
	sha256 "d64f90d7d866bf0d723aeaa72908e6c82d64fcf94a7c842df51fbef1b6433636"
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
