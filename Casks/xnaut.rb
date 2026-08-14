cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.1"
  sha256 arm:   "66d1f396716c6b1b42f8a84a54841e11f12b8bc02f3b5177cc33ba8608e3c330",
         intel: "1d4bcb0cc5e1347c3017c689edefbd04ea402b3d9ba5506edc451c97d39bcc87"

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
