cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "b3b4df9e32f7fa9f0a3865f6c2238aace7232b12f33ef7f868c01c898acf5d88",
         intel: "ff0a731c4ce96a98df11e19bc4721880496defd2a97599a772b05b84b5b56bea"

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
