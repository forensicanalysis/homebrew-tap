class Elementary < Formula
  desc "🕵️ Process and show forensic artifacts in forensicstores"
  homepage "https://forensicanalysis.github.io/documentation"
  url "https://github.com/forensicanalysis/elementary/archive/v0.1.3.tar.gz"
  sha256 "53f248476b0efe729a7b7bc7282e6fd973139ab65689c1c9414692410c4573f8"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    (buildpath/"src/github.com/forensicanalysis/elementary").install buildpath.children

    cd "src/github.com/forensicanalysis/elementary" do
      system "go", "build", "-o", bin/"elementary", "main.go"

      system bin/"elementary", "install", "-f"

      # prefix.install_metafiles
    end
  end

  test do
    store = testpath/"hops-yeast-malt-water.forensicstore"
    system "#{bin}/elementary", "create", store
    assert_predicate testpath/store, :exist?
  end
end
