class EnergyatitMcpServer < Formula
  desc "MCP server for energy infrastructure — dispatch, carbon, meters"
  homepage "https://github.com/kasathur/energyatit-mcp-server"
  url "https://registry.npmjs.org/energyatit-mcp-server/-/energyatit-mcp-server-1.0.0.tgz"
  sha256 "2b94c8adde9c58aef74180b413a40ceeb493f92a8cbb55fe271803ed49473b96"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/energyatit-mcp"
  end

  test do
    assert_match "energyatit", shell_output("#{bin}/energyatit-mcp --help 2>&1", 1)
  end
end
