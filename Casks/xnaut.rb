cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.4"
  sha256 arm:   "fdf811e8346e732ca481c7ec3b8b01d91079d67888dded15a49f38f97d3a8512",
         intel: "2618387092b06cb23860d1ac9390889f2b451b5845781f648680ff28aaa76b3f"

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
