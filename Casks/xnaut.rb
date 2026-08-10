cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.8"
  sha256 arm:   "82a56370ebb1ce612df111fafe46f6f890dfe59fd67fb7fe0228223e86e4d881",
         intel: "8ae3f4f18fe1ec80cd40371190b1dd97e95f678caf548535baffc78beaaf4835"

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
