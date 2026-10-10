cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.11"
  sha256 arm:   "f5b359dad1f0091102b5f36731723b5e40f3f3c11fa8a1c146045833ace46aee",
         intel: "f11aaf0c2e1da7a21d79c216817abe9984ee53c82b2e8c064bed408f5b6b825a"

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
