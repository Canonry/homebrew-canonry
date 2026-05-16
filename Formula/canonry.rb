class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://ainyc.ai"
  url "https://registry.npmjs.org/@ainyc/canonry/-/canonry-4.41.0.tgz"
  sha256 "2eb9675610a8f6835e532c9ec96e05b11ec2207752636a43c44c60d6b0bdb420"
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
