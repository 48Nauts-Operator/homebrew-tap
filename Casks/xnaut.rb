cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "5a9888d68ef0c4b1709382da812fdd69652f92bb10cef5aef207f5423c66be1c",
         intel: "c7f1d800d735d7cb35bb3df62d9a3769d82bc73a1c0b0c6e19c16c8dd3bebce0"

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
