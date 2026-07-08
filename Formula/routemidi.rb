class Routemidi < Formula
  desc "Multi-platform command-line tool to route and transform MIDI messages"
  homepage "https://github.com/gbevin/RouteMIDI"
  url "https://github.com/gbevin/RouteMIDI/archive/refs/tags/0.9.7.tar.gz"
  sha256 "f4c3cbd763ed2cf6dbaa2d17c0d9d1c8fa652257b6ff3c15d531561ef7494e45"

  head "https://github.com/gbevin/RouteMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/routemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build"
    bin.install "./Builds/MacOSX/build/Release/routemidi"
  end

  test do
    assert_match "Usage: routemidi", shell_output("#{bin}/routemidi")
  end
end
