class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://ainyc.ai"
  url "https://registry.npmjs.org/@ainyc/canonry/-/canonry-4.47.0.tgz"
  sha256 "bc070610b3f11837ea51499eb31ddfa29911ecf662c2de18e92f8575b08d0ccf"
  license "FSL-1.1-ALv2"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canonry --version")
  end
end
