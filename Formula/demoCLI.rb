class Democli < Formula
    desc "A description of your demoCLI tool"
    homepage "https://github.com/Vineet-Fullstack/demoCLI"
    url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.15/osx-x64.zip"  # This will be updated automatically
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"  # This will be updated automatically
    version "1.0.15"  # This will be updated automatically
  
    def install
      bin.install "demoCLI"  # Adjust this path based on where your executable is inside the zip file
    end
  
    test do
      system "#{bin}/demoCLI", "--help"
    end
  end
  