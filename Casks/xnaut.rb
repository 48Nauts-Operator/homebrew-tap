cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.2"
  sha256 arm:   "a8513f2386f74e7124eb31c6ad2ebdcce581ac93109503b69b0dc7899fde021a",
         intel: "9feb2e4dbcbbc85b4009dd677e0476545529073613eaebb6c25f2bb99b54f3fc"

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
