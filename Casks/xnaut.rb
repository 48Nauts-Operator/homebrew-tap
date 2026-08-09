cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.2"
  sha256 arm:   "7597fbf337d62fae0402b1a35a529df1012392fc058c0c07fec1c80768dfd4a3",
         intel: "529be85a2b9e0346e2df3e5c52d265de4b51e2b95ecd9ca640a1a6538aa0983d"

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
