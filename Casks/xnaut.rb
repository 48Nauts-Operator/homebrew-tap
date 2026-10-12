cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.31.2"
  sha256 arm:   "8305e763d19f3a3bb1f5102979ae37cc2493db1617ded285ef7290e3ef8b13e1",
         intel: "144cc7eb7c9720d0285f6d813a0db38c0f1cfac61215792d5fc63e60bd3d3a95"

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
