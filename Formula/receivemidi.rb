class Receivemidi < Formula
  desc "Multi-platform command-line tool to monitor and receive MIDI messages"
  homepage "https://github.com/gbevin/ReceiveMIDI"
  url "https://github.com/gbevin/ReceiveMIDI/archive/refs/tags/1.6.0.tar.gz"
  sha256 "3924218556035a3b57cee4d8a4a2553ad68131c4d3fbfb5ff149d65377f655a7"

  head "https://github.com/gbevin/ReceiveMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/receivemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build", "MACOSX_DEPLOYMENT_TARGET=#{MacOS.version}"
    bin.install "./Builds/MacOSX/build/Release/receivemidi"
  end

  test do
    assert_match "Usage: receivemidi", shell_output("#{bin}/receivemidi")
  end
end
