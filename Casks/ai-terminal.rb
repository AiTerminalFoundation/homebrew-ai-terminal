cask "ai-terminal" do
  version "0.5.3"
  sha256 "086a8252f55098c931e2ca28afc028198d84353ffc90fdd014f53a90325ba441"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.5.3/ai-terminal-0.5.3.dmg"
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