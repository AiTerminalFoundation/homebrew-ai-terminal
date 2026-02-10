cask "ai-terminal" do
  version "1.1.0"
  sha256 "dcd482b7ae9723428d99248ec57eaf3e0ab026d0327c5a1e258cbcd7cd681e53"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v1.1.0/ai-terminal-1.1.0.dmg"
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