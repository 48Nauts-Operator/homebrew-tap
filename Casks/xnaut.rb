cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "eafb54deba2e248dfa2e5646b6d518200e3d065dc0d7713eb28c1cdedbbe1f3d",
         intel: "933b8ae44b2df9cd7b0025e41ac2921c62e281a821fa07462af5054869b46ca4"

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
