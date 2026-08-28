cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.24.4"
  sha256 arm:   "858c0cbb8eb24c041cee7321e7eb5a560f53348968b3eb38013c5fb2f6164da2",
         intel: "c052f784cee436a9e4cb54be47f2b4ee781450ef1f440b13ddc96cf41f3edf1b"

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
