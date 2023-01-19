class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/1.3.0.tar.gz"
  sha256 "d16baa31db43a0a9be2b1e2da1682d021acad00657ddac4f437839d2e3d34b77"

  head "https://github.com/gbevin/ReceiveMIDI.git"

  depends_on :xcode => :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/receivemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build"
    bin.install "./Builds/MacOSX/build/Release/receivemidi"
  end

  test do
    assert_match /Usage: receivemidi/, shell_output("#{bin}/receivemidi")
  end
end
