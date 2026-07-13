cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "846fa04ea8da4984a8b8c4c75c31b5bc2a0c8a3c8306d9e9e702bec9f34f76c5",
         intel: "d73af708517ac00981dc82aba677a20af305f810caae15bc2a7e8c31b81989f0"

  url "https://github.com/48Nauts-Operator/xNaut/releases/download/v#{version}/xNAUT-#{version}-macos-#{arch}.dmg",
      verified: "github.com/48Nauts-Operator/xNaut/"
  name "xNAUT"
  desc "AI-enhanced native terminal with worktree review and agent orchestration"
  homepage "https://github.com/48Nauts-Operator/xNaut"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "xNAUT.app"

  zap trash: [
    "~/Library/Application Support/xnaut",
    "~/Library/Caches/com.nautcode.xnaut",
    "~/Library/HTTPStorages/com.nautcode.xnaut",
    "~/Library/Preferences/com.nautcode.xnaut.plist",
    "~/Library/Saved Application State/com.nautcode.xnaut.savedState",
  ]
end
