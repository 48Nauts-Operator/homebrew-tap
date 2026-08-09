cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.3"
  sha256 arm:   "fa3f69404628387ad5e0db17b119789ad25e8c2484c992b05c663d6fb49e1e7e",
         intel: "0c2841ad0ace1b54e17ccac2079a935548e606ae8d53f7d238f5e7760ed65a8d"

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
