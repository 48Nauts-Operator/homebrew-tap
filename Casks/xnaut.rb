cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.21.2"
  sha256 arm:   "8d29c0859f15889839a11bf536ac4d67228e36b1d183174ada2538bd9a382966",
         intel: "cbe1dbe49b9f57789e664c2b95f51d4ecadb9fc6bb1c0b1f43e9c262790c4437"

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
