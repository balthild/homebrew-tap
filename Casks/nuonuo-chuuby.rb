cask "nuonuo-chuuby" do
	name "糯糯啾比"
	desc "Desktop pet that lives on your windows"
	homepage "https://github.com/balthild/NuonuoChuuby"

	version "0.2.1"
	sha256 "9188108e4be0da1aeec5d38264b082fb4ce47aa214d8d9dd909242223f1b2695"
	url "https://github.com/balthild/NuonuoChuuby/releases/download/v#{version}/NuonuoChuuby-v#{version}.zip"

	depends_on arch: :arm64
	depends_on macos: :sonoma

	app "NuonuoChuuby.app"

	preflight_steps do
		run "xattr", args: [
			"-rd", "com.apple.quarantine",
			"{{staged_path}}/NuonuoChuuby.app",
		]
	end
end
