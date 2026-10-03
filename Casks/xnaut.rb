cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.29.3"
  sha256 arm:   "b8a7b3f1007b678c52738c71facb4521666adbbeb4f0d49e91435cd1a6beb1ba",
         intel: "6f18914ac056cfb7f42860e068fdef1760135bb5c0b69aa7f076317b6911dcce"

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
