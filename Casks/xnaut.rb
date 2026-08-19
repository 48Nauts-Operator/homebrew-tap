cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "67d247e85cf2ecac884819f3aa2807942ad99c159af79fe8afa7e47d1075fd6a",
         intel: "c13a26c847000f8d94b09461074e4915bc6b734f6ec5a4adc69adaed5ea9db08"

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
