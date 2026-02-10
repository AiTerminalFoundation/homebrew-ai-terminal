cask "ai-terminal" do
  version "1.1.2"
  sha256 "01a98c83aeacc58c12819246b0a89a30c08c50ae8de845164c0d510e3a57ef9b"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v1.1.2/ai-terminal-1.1.2.dmg"
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