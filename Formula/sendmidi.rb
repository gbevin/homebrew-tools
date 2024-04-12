class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/1.3.1.tar.gz"
  sha256 "64faf668e3e670fb02a12ffb84172ee3fb70ef1b56804818fe0577eb66d3ec9c"

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
