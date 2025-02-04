class Democli < Formula
    desc "A description of your demoCLI tool"
    homepage "https://github.com/Vineet-Fullstack/demoCLI"
    url "https://github.com/Vineet-Fullstack/demoCLI/releases/download/v1.0.23/osx-x64.zip"
    sha256 "5fb5a85545c98f488b970630d2c24e675be0ee19c8662adc189645ca680042e9"
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
