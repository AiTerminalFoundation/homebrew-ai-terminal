cask "ai-terminal" do
  version "0.4.13"
  sha256 "dc4e653c694e44eaf8bd8fea0eebd7b770e288a7f8bd27c0007da2362d503714"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.13/ai-terminal-0.4.13.dmg"
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