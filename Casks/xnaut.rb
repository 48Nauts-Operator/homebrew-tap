cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.27.0"
  sha256 arm:   "590568a4e189de45f86058d561a5c4671c2446f256f4023146b9d76b7210acd3",
         intel: "ac18c10b89c52fae61cb0c3fba7e8b24c919d5930dfaa6b89cfd0705f21b8dbd"

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
