cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.24.6"
  sha256 arm:   "3d4f0faed121165b5f689bdda65cbd876686f203c3995c454e6fd93d31cb6590",
         intel: "51120ad375217f95c2d43ba495ca9db5805a397254ad76b4bdcc32f69fc7406b"

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
