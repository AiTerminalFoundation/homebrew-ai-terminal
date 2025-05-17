cask "ai-terminal" do
  version "0.4.9"
  sha256 "a6302f814ed3ae68059984a139d4562afbce91bce19a4ee32fe09ced086e364c"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.9/ai-terminal-0.4.9.dmg"
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