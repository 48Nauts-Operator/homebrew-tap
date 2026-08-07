cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "3f79330fee9c1ab50cb5418c0ea6840a6dcf4ae2f7199ed8cca5ebaafa893f4f",
         intel: "cc8f6bbf99b41b0ed91fe8f20b28494b943fe6ad4a4cfc110efce76c9ec1bb0b"

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
