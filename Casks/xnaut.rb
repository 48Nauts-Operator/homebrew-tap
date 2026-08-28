cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.25.1"
  sha256 arm:   "c505362615494ee135c5e7a2262c7c808a6f6cf96b664e1a3e6d28bd3d13ac04",
         intel: "b1d98ac6c16ea78f5a206a3dfebb760797ca28d30395733c338c64eb0fa6227f"

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
