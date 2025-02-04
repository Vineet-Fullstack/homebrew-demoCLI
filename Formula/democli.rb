class Democli < Formula
  desc "A description of your demoCLI tool"
  homepage "https://github.com/Vineet-Fullstack/demoCLI"
  url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.23/osx-x64.zip"
  sha256 "5fb5a85545c98f488b970630d2c24e675be0ee19c8662adc189645ca680042e9"
  version "v1.0.23"

  def install
    # Assuming the zip contains a macOS binary named `demoCLI`
    bin.install "demoCLI"
  end

  test do
    # Add a simple test to verify the installation
    system "#{bin}/demoCLI", "--version"
  end
end
