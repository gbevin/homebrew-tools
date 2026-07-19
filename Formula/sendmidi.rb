class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/refs/tags/1.4.3.tar.gz"
  sha256 "40a74ffd82d5c956242d8caeeff2b13d663e0e32911c586a5e2b67e0e34c80c6"

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
