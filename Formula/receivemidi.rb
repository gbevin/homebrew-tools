class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/1.2.0.tar.gz"
  sha256 "a4df079ba1d3efee9769e9f9b019feafc8e05a4218f7d872f3f87ff33e11d092"

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
