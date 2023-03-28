class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/1.3.1.tar.gz"
  sha256 "54697ad1a723eea5e3f19ec3bf153795e765b278953dde8be7f350001637bc0a"

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
