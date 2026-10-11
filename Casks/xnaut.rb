cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.14"
  sha256 arm:   "f75679d35bbe911ba9c70832d40b9289333dc219ba3c5b906f66705c68db6ea2",
         intel: "7c55af21279e4ebbd82a6b52b1c6b0a3fa75eb39313424a3bd0f4c8c3a1fa488"

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
