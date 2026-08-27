cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.24.2"
  sha256 arm:   "ab41caf42d8a9af30aa0e62eabb32aa237a6bb1d5b56cc0ae11d958b7fe5f27e",
         intel: "35c9f5aae90cc1fbfb4151bd85e8af9fdb8e551b759293ac622cea05eee49ffe"

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
