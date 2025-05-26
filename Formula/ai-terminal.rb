class AiTerminal < Formula
  desc "AI-powered terminal with natural language command interface"
  homepage "https://github.com/AiTerminalFoundation/ai-terminal"
  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v1.0.0/ai-terminal-1.0.0.dmg"
  version "1.0.0"
  sha256 "85f91d71c68adc4f66a375b300ab31d314e0f282a70d7357007af27b446f0c7d" # Updated automatically by build script

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