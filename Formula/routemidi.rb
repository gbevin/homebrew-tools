class Routemidi < Formula
  desc "Multi-platform command-line tool to route and transform MIDI messages"
  homepage "https://github.com/gbevin/RouteMIDI"
  url "https://github.com/gbevin/RouteMIDI/archive/refs/tags/0.9.1.tar.gz"
  sha256 "be8dea65b8066c27266817d7f5b7feed1e281e77f8cb9ddd5b73b30962bec0e1"

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
