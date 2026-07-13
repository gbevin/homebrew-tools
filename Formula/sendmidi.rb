class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/refs/tags/1.4.1.tar.gz"
  sha256 "39ec2e1ed25de09b54a019c7810ff514dfeb9e65de2b3e4e95629bfc8921e299"

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
