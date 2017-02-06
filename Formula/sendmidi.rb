class Sendmidi < Formula
  desc "Multi-platform command-line tool to send out MIDI messages"
  homepage "https://github.com/gbevin/SendMIDI"
  url "https://github.com/gbevin/SendMIDI/archive/1.0.6.tar.gz"
  sha256 "c66e4abc72d0c7be5062bdb879a3a2aa83238a3e35c5a06b7e70695887e6a304"

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
