cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.22.1"
  sha256 arm:   "81bb311a3264594a080bccb0dcaf0d3bff8bc304ffd2d461780f8ee10ad527bd",
         intel: "6f468a8dbb7622f189ae4a5984c6f0dc022932aaab061fc0d15e652aadf83756"

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
