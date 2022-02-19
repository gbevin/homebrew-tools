class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/1.2.0.tar.gz"
  sha256 "4c382502da4683b3265c25e5a6eda57dff78c672d1b1c2a44233f499fcbf63a2"

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
