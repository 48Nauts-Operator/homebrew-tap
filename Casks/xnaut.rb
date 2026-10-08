cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.6"
  sha256 arm:   "1b2d3745a0c2299b608361d8c8251097fc063d8694e8ee9d0cea8fea41dcbb1a",
         intel: "af300fc282902d39623acf4ddb43950c0f67d6e74c8b56fa0f25a446850be68b"

  url "https://github.com/48Nauts-Operator/xNaut/releases/download/v#{version}/xNAUT-#{version}-macos-#{arch}.dmg"
  name "xNAUT"
  desc "AI-enhanced native terminal with worktree review and agent orchestration"
  homepage "https://github.com/48Nauts-Operator/xNaut"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "xNAUT.app"

  zap trash: [
    "~/Library/Application Support/xnaut",
    "~/Library/Caches/com.nautcode.xnaut",
    "~/Library/HTTPStorages/com.nautcode.xnaut",
    "~/Library/Preferences/com.nautcode.xnaut.plist",
    "~/Library/Saved Application State/com.nautcode.xnaut.savedState",
  ]
end
