cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.31.0"
  sha256 arm:   "6dde03f26cd8d516531c5a8a521f7f5d8654143a3228814b7d4e731eb6d7ee45",
         intel: "50a38524c7548916cb9cabea36ff4f6ebdf70852ccbf3471363cfb68a72342dd"

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
