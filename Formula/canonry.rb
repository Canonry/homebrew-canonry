class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://canonry.ai/platform"
  url "https://registry.npmjs.org/@canonry/canonry/-/canonry-7.83.2.tgz"
  sha256 "95abfc52aaded397f9a91484991df6ebd13e716a13993523d03e01c87ddcbbcd"
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
