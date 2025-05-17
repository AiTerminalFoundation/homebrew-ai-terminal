cask "ai-terminal" do
  version "0.4.12"
  sha256 "c336eaacc18778139c34e205a7b4fb6acf41bc9b77dc615711444a87e63fcc03"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.12/ai-terminal-0.4.12.dmg"
  name "AI Terminal"
  desc "AI-powered terminal with natural language command interface"
  homepage "https://github.com/AiTerminalFoundation/ai-terminal"

  depends_on macos: ">= :monterey"

  app "ai-terminal.app"
  binary "#{appdir}/ai-terminal.app/Contents/MacOS/ai-terminal", target: "ai-terminal"

  zap trash: [
    "~/Library/Application Support/ai-terminal",
    "~/Library/Caches/ai-terminal",
    "~/Library/Preferences/ai-terminal.plist",
  ]
end 