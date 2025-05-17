cask "ai-terminal" do
  version "0.4.11"
  sha256 "a829ac1299c9f9516dc0b3a42e2c6f2b6d9a49dea469239f5fbf4da97c526dc8"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.11/ai-terminal-0.4.11.dmg"
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