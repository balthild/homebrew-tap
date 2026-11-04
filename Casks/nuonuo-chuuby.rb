cask "nuonuo-chuuby" do
	name "糯糯啾比"
	desc "Desktop pet that lives on your windows"
	homepage "https://github.com/balthild/NuonuoChuuby"

	version "0.4.2"
	sha256 "f3535e8c7a58d65d9ef1e42589fd62356765593b6c832d21c3a0cb4fc5883c2a"
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
