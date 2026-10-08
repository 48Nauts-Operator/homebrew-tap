cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.8"
  sha256 arm:   "0ba2a2aa0e24175e40c90e71d3a3aa706b28be84a7d7bb0f7cc79a7ae24ee370",
         intel: "d1a9980092b0d70a15e71b43fa8cb4da4968146ca883766bf8f59a0c268fa176"

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
