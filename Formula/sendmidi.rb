class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/refs/tags/1.4.2.tar.gz"
  sha256 "7e2437c67b977faddbdb0ff7fac264405f05141adf51f0f8916811a1bdba638e"

  head "https://github.com/gbevin/SendMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/sendmidi.xcodeproj", "-configuration", "Release", "SYMROOT=build", "MACOSX_DEPLOYMENT_TARGET=#{MacOS.version}"
    bin.install "./Builds/MacOSX/build/Release/sendmidi"
  end

  test do
    assert_match "Usage: sendmidi", shell_output("#{bin}/sendmidi")
  end
end
