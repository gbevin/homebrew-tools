class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/refs/tags/1.4.0.tar.gz"
  sha256 "25cb9f3f1ddd4a7a481eee6d3fc5f34420397710c78bf3c0061f07cd996e946a"

  head "https://github.com/gbevin/SendMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/sendmidi.xcodeproj", "-configuration", "Release", "SYMROOT=build"
    bin.install "./Builds/MacOSX/build/Release/sendmidi"
  end

  test do
    assert_match "Usage: sendmidi", shell_output("#{bin}/sendmidi")
  end
end
