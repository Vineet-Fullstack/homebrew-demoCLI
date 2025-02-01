class Democli < Formula
    desc "A description of your demoCLI tool"
    homepage "https://github.com/Vineet-Fullstack/demoCLI"
    url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.18/osx-x64.zip"
    sha256 "e7f826b22047b709378676b0cc12ef9d16bc50944e533f8a44527d7cb621944c"
    version "v1.0.18"
  
    def install
        bin.install "bin/demoCLI"  # Adjust this path based on where your executable is inside the zip file
    end
  
    test do
      system "#{bin}/demoCLI", "--help"
    end
  end
  