class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://canonry.ai/platform"
  url "https://registry.npmjs.org/@canonry/canonry/-/canonry-7.84.0.tgz"
  sha256 "072477a787266de7669b58b1bf560816081e4b01582241ad453c0a6d434d7a10"
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
