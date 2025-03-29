cask "ai-terminal" do
  version "0.2.0"
  sha256 "bd98651acc9cd028f4cc6bc6f28f3696fdcb8708659af31477737a02f41c227a"

  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v#{version}/ai-terminal-#{version}.dmg"
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