class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://canonry.ai/platform"
  url "https://registry.npmjs.org/@canonry/canonry/-/canonry-5.8.0.tgz"
  sha256 "774c56ee3a5e91193eb3aafa1dac82a5c39f188473a0d8a9f37f5c6807793df4"
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
