cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "b9fcaa6679495cccac9335ffddf3c22cbd2b6b09a77bf9e4b837545ab457ac0e",
         intel: "a462c6e4ef90a4db0374335fab3cc7035ebd73276cef0b2ae399698db0940a29"

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
