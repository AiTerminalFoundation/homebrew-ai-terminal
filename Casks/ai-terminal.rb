cask "ai-terminal" do
  version "1.0.0"
  sha256 "85f91d71c68adc4f66a375b300ab31d314e0f282a70d7357007af27b446f0c7d"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v1.0.0/ai-terminal-1.0.0.dmg"
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