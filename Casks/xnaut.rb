cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.9"
  sha256 arm:   "c2d0a2e16b11fcad78844d2edcd6318071cca2bf6718ff5b30fc2dd96044d9bd",
         intel: "383be3bbaa255f48255cc9b794087cd0a4ab0bf94b0612e99f5c9fe5f19eb857"

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
