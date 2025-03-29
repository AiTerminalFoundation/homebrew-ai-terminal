cask "ai-terminal" do
  version "0.2.0"
  sha256 "3404a8d96499764195ba3d3cc411824fa3732b7ea0aaf4b3329e7c45e6e7a4f8"

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