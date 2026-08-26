cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "9d9314fb84a6f9e9c15413dbe2c0ef8296d02c6ab251cb7d9e6350ea6156be69",
         intel: "c99e115967adeffeb6d1aee9fcf14788bed65504fd4a5f24aa6ee3bf7e65c337"

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
