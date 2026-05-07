class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://ainyc.ai"
  url "https://registry.npmjs.org/@ainyc/canonry/-/canonry-4.10.1.tgz"
  sha256 "2267e02f7f098339eedabffe86ae4ae6581c21c585614fbb4e1c440d9d19de59"
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
