class Routemidi < Formula
  desc "Multi-platform command-line tool to route and transform MIDI messages"
  homepage "https://github.com/gbevin/RouteMIDI"
  url "https://github.com/gbevin/RouteMIDI/archive/refs/tags/0.9.4.tar.gz"
  sha256 "a23970795e955fa73b0d814e2b62dab3ea2775555cc9f764b0cb3d18793da851"

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
