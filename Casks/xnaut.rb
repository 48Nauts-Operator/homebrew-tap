cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.16.2"
  sha256 arm:   "43b7c883351ec80a9d12c8236a2d6e5ebd7152603e6e50a86a563f68f668a311",
         intel: "60df5e5eb1db2f69b7a4b7d371652218af0c90d4d16d7a67b72aa687016983e5"

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
