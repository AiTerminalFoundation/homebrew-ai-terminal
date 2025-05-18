cask "ai-terminal" do
  version "0.9.0"
  sha256 "b22b7138d864a84b9c74b861fb35b6b6a2e799cb73070bca961e71a94b8f57b8"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.9.0/ai-terminal-0.9.0.dmg"
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