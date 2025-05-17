cask "ai-terminal" do
  version "0.4.14"
  sha256 "f96719574d192900d2bc71698f13e56d2f3708cd0cb6b6efc0c0e9386ba3d565"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.14/ai-terminal-0.4.14.dmg"
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