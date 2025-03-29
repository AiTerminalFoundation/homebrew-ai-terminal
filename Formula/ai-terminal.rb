class AiTerminal < Formula
  desc "AI-powered terminal with natural language command interface"
  homepage "https://github.com/AiTerminalFoundations/ai-terminal"
  url "https://github.com/AiTerminalFoundation/ai-terminal/releases/download/v0.2.0/ai-terminal-0.2.0.dmg"
  version "0.2.0"
  sha256 "3404a8d96499764195ba3d3cc411824fa3732b7ea0aaf4b3329e7c45e6e7a4f8" # Updated automatically by build script

  depends_on macos: ">= :monterey"
  
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    # Mount the DMG
    mount_point = "/Volumes/ai-terminal"
    system "hdiutil", "attach", "-nobrowse", "-quiet", "-mountpoint", mount_point, "#{staged_path}/ai-terminal-#{version}.dmg"
    
    # Copy the app to the prefix directory
    prefix.install "#{mount_point}/ai-terminal.app"
    
    # Create symlink in bin directory
    bin.install_symlink "#{prefix}/ai-terminal.app/Contents/MacOS/ai-terminal" => "ai-terminal"
    
    # Unmount the DMG
    system "hdiutil", "detach", "-quiet", mount_point
  rescue => e
    # Handle errors during installation
    opoo "Error during installation: #{e.message}"
    system "hdiutil", "detach", "-quiet", mount_point rescue nil
    raise
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