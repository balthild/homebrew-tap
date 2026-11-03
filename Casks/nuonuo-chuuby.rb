cask "nuonuo-chuuby" do
	name "糯糯啾比"
	desc "Desktop pet that lives on your windows"
	homepage "https://github.com/balthild/NuonuoChuuby"

	version "0.3.1"
	sha256 "8fcdda2c6fc676ce487c40b22dfe5c68fa9d5eaa4466f1679df5b47eff28ebb7"
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
