class Democli < Formula
    desc "A description of your demoCLI tool"
    homepage "https://github.com/Vineet-Fullstack/demoCLI"
    url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.23/osx-x64.zip"
    sha256 "9345ae6e93011a62f9b4443ba8e896ed5a5a25a37f437e0349042928c94f3bb5"
    version "v1.0.23"

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
