class Democli < Formula
    desc "A description of your demoCLI tool"
    homepage "https://github.com/Vineet-Fullstack/demoCLI"
    url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.18/osx-x64.zip"
    sha256 "e7f826b22047b709378676b0cc12ef9d16bc50944e533f8a44527d7cb621944c"
    version "v1.0.18"
  
    depends_on "dotnet" => :cask  # ✅ Ensure .NET runtime is installed
  
    def install
      libexec.install Dir["*"]  # ✅ Copy everything into libexec
  
      (bin/"demoCLI").write <<~EOS
        #!/bin/bash
        DOTNET_ROOT=$(brew --prefix dotnet-runtime)
        exec "$DOTNET_ROOT/dotnet" "#{libexec}/demoCLI.dll" "$@"
      EOS
  
      chmod "+x", bin/"demoCLI"
    end
  end
  