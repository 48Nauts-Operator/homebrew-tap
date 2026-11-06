cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.35.0"
  sha256 arm:   "951ccb3697c43f5707bb3b22b1df619c6a1b02448e99efb8dfd7326ee05e111b",
         intel: "6bb23ba6d0ab6021d198ebdceb7b8f0d3c15797bb4fda7b96a3b4c18b6f89e27"

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
