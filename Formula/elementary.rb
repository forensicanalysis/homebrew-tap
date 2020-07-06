class Elementary < Formula
  desc "🕵️ Process and show forensic artifacts in forensicstores"
  homepage "https://forensicanalysis.github.io/documentation"
  url "https://api.github.com/repos/forensicanalysis/elementary/tarball/v0.2.0"
  sha256 "33b7d5ee780315f674ea881d0bf23663197090eac37e41bce9da630d7fe7f5c0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    (buildpath/"src/github.com/forensicanalysis/elementary").install buildpath.children

    cd "src/github.com/forensicanalysis/elementary" do
      system "go", "build", "-o", bin/"elementary", "main.go"

      # system bin/"elementary", "install", "-f"
      # prefix.install_metafiles
    end
  end

  test do
    store = testpath/"hops-yeast-malt-water.forensicstore"
    system "#\{bin\}/elementary", "create", store
    assert_predicate testpath/store, :exist?
  end
end
