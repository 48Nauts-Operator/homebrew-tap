cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "56ca8f6b8ae9750917e566eb2ac1be3c0d0d07ee99eb1a1cb5da45b6bd3cfbff",
         intel: "ddd63eba1c660c40065d3d0ac0f4db34cb79ff32216d8e3cf0de490fdbd7b7d1"

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
