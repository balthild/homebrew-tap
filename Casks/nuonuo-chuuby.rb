cask "nuonuo-chuuby" do
	name "糯糯啾比"
	desc "Desktop pet that lives on your windows"
	homepage "https://github.com/balthild/NuonuoChuuby"

	version "0.4.1"
	sha256 "01bf94baccd8f20b93c5b74113bce7c402608956a412d8072d243528ed1cbae0"
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
