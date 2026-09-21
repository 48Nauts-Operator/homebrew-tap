cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.27.1"
  sha256 arm:   "f0b827fc1c2b1bb2e20e86e98b3f19649523cddcaaafeca1ada0b695cb7ca2c5",
         intel: "aecd4114738fea6df1740f861202f51a11b5d7f1f1e295fc851b143a432654e7"

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
