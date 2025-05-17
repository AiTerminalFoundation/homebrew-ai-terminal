cask "ai-terminal" do
  version "0.4.10"
  sha256 "166cc664cd51e2effaa83145ba88e02a32aee6c56c0464efe4b3e7f3ec200f0c"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.10/ai-terminal-0.4.10.dmg"
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