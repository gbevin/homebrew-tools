class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/1.0.13.tar.gz"
  sha256 "ed8df2161278a631057193b1699aee5d552e80c6052f9db438d1e45c0f0b7970"

  head "https://github.com/gbevin/SendMIDI.git"

  depends_on :xcode => :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/sendmidi.xcodeproj", "-configuration", "Release", "SYMROOT=build"
    bin.install "./Builds/MacOSX/build/Release/sendmidi"
  end

  test do
    assert_match /Usage: sendmidi/, shell_output("#{bin}/sendmidi")
  end
end
