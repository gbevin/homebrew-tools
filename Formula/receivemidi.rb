class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/1.0.0.tar.gz"
  sha256 "7e83069f50bb8d50e722401bd277e116906fb25b7efcc379e5e3b829de869a17"

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
