cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "7b376d53fc50e01fcf7b67d98aa81dddfcd8dbe2592f0a31c67946b71eeb9bb2",
         intel: "881fd845e7501b0d7a9348617f1b4fba3bb3a65b81ad55551fc7a86792638ce2"

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
