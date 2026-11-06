cask "nuonuo-chuuby" do
	name "糯糯啾比"
	desc "Desktop pet that lives on your windows"
	homepage "https://github.com/balthild/NuonuoChuuby"

	version "0.4.3"
	sha256 "951f45da252b30f56b565698dc65fe3779515e9543939cf0963b9d659c751d3e"
	url "https://github.com/balthild/NuonuoChuuby/releases/download/v#{version}/NuonuoChuuby-v#{version}.dmg"

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
