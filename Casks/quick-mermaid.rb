cask "quick-mermaid" do
  version "0.6.1"
  sha256 "c17be6f6efe9d6e4a20190f07e6ab3207bdb45c61f7ababcd42bfb0c18178400"

  url "https://github.com/wicksome/quick-mermaid/releases/download/v#{version}/QuickMermaid-#{version}.dmg"
  name "QuickMermaid"
  desc "Menu bar viewer that renders Mermaid and PlantUML source"
  homepage "https://github.com/wicksome/quick-mermaid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "QuickMermaid.app"
  binary "#{appdir}/QuickMermaid.app/Contents/Resources/qmmd"

  # The app is ad-hoc signed, so Gatekeeper blocks a quarantined copy
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/QuickMermaid.app"],
        writable_paths: ["QuickMermaid.app"],
        writable_base:  :appdir
  end

  uninstall quit: "me.wickso.quickmermaid"

  zap trash: "~/Library/Preferences/me.wickso.quickmermaid.plist"
end
