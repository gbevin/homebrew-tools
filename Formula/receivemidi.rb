class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/refs/tags/1.6.1.tar.gz"
  sha256 "4b144de5ff6e30aead7ee87ead8beef27043b7deeb504dec1e0a93e05b77dd8c"

  head "https://github.com/gbevin/ReceiveMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/receivemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build", "MACOSX_DEPLOYMENT_TARGET=#{MacOS.version}"
    bin.install "./Builds/MacOSX/build/Release/receivemidi"
  end

  test do
    assert_match "Usage: receivemidi", shell_output("#{bin}/receivemidi")
  end
end
