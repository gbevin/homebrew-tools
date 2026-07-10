class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/refs/tags/1.5.0.tar.gz"
  sha256 "0dcf43bfa2ad1ead4b8a5e42b6fce32da37923a5d6ca762ea9be5217e10aa730"

  head "https://github.com/gbevin/ReceiveMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/receivemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build"
    bin.install "./Builds/MacOSX/build/Release/receivemidi"
  end

  test do
    assert_match "Usage: receivemidi", shell_output("#{bin}/receivemidi")
  end
end
