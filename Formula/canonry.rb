class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://ainyc.ai"
  url "https://registry.npmjs.org/@ainyc/canonry/-/canonry-4.70.1.tgz"
  sha256 "0ed9a5c95712ce04c960b21ec24c3dd7f2dee8e8dd59d92e4bb57815cc8e50e3"
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
