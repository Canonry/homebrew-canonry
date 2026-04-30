class Canonry < Formula
  desc "Agent-first AEO operating platform"
  homepage "https://ainyc.ai"
  url "https://registry.npmjs.org/@ainyc/canonry/-/canonry-3.1.0.tgz"
  sha256 "0a405035d5fb52fdb6bc3f4b31fb5bd627f423760d7e2f404cd40ea5ae42e590"
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
