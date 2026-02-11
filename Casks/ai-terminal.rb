cask "ai-terminal" do
  version "1.1.3"
  sha256 "db16edd8ca20c05372c491bdfe2bbc264f83d01fd008d5db0fcf01ecea02e210"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v1.1.3/ai-terminal-1.1.3.dmg"
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