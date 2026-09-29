cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.2"
  sha256 arm:   "ab530346ef9285a12188e5caf4314fbd96fe5106cf7838d4a82ce90b2fb85357",
         intel: "462b70b52022b667b66ac9764667dbf8c8fabd3a1aa5efdfea18f76924df9d31"

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
