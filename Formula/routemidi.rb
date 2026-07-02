class Routemidi < Formula
  desc "Multi-platform command-line tool to route and transform MIDI messages"
  homepage "https://github.com/gbevin/RouteMIDI"
  url "https://github.com/gbevin/RouteMIDI/archive/refs/tags/0.9.2.tar.gz"
  sha256 "ac8537d8c93eee5fc17a37683a82a775f14550271e67c7bc7c5c0c173c9e9c85"

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
