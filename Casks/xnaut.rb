cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.10"
  sha256 arm:   "bfcbe71428461d886da29d3d0d7b5d288061bded8ca9ff78b1e04d2a9f311432",
         intel: "f1597ec6c2cd512bec354e3b93bef74609fa48f708947f7dfd1333601b01fb57"

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
