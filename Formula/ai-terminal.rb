class AiTerminal < Formula
  desc "AI-powered terminal with natural language command interface"
  homepage "https://github.com/AiTerminalFoundation/ai-terminal"
  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.4.10/ai-terminal-0.4.10.dmg"
  version "0.4.10"
  sha256 "166cc664cd51e2effaa83145ba88e02a32aee6c56c0464efe4b3e7f3ec200f0c" # Updated automatically by build script

  depends_on :macos => :monterey
  
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    # DMGs are not supported directly in formulas
    # Using a cask is more appropriate for DMG installations
    odie "This formula has been updated to use a cask. Please use 'brew install --cask ai-terminal' instead."
  end

  def post_install
    # Make the binary executable
    chmod 0755, "#{prefix}/ai-terminal.app/Contents/MacOS/ai-terminal"
  end

  def caveats
    <<~EOS
      ai-terminal has been installed to:
        #{prefix}/ai-terminal.app
      
      You can also run it from the terminal with the command:
        ai-terminal
      
      For best experience, you need Ollama installed for AI features:
        brew install ollama
    EOS
  end

  test do
    # Basic check for app existence
    assert_predicate "#{prefix}/ai-terminal.app/Contents/MacOS/ai-terminal", :exist?
  end
end 