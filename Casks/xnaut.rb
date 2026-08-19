cask "xnaut" do
  arch arm: "aarch64", intel: "x64"

  version "1.18.1"
  sha256 arm:   "07402cfbb9459cf18d604fc914f175591adcdfba2d52fe02f57d7fc390e47286",
         intel: "e94387487778a7c670cb8ae9e0c929a9f99a9641ca580b26db08aab295656624"

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
