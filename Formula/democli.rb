class Democli < Formula
  desc "A description of your demoCLI tool"
  homepage "https://github.com/Vineet-Fullstack/demoCLI"
  url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.21/osx-x64.zip"
  sha256 "9345ae6e93011a62f9b4443ba8e896ed5a5a25a37f437e0349042928c94f3bb5"
  version "v1.0.21"

  def install
    # Assuming the zip contains a macOS binary named `demoCLI`
    bin.install "demoCLI"
  end

  test do
    # Add a simple test to verify the installation
    system "#{bin}/demoCLI", "--version"
  end
end
