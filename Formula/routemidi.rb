class Routemidi < Formula
  desc "Multi-platform command-line tool to route and transform MIDI messages"
  homepage "https://github.com/gbevin/RouteMIDI"
  url "https://github.com/gbevin/RouteMIDI/archive/refs/tags/0.9.10.tar.gz"
  sha256 "c01beb801acff833b48da308fe48d960dfde83f852df39b445e565a87407433a"

  head "https://github.com/gbevin/RouteMIDI.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "./Builds/MacOSX/routemidi.xcodeproj", "-configuration", "Release", "SYMROOT=build", "MACOSX_DEPLOYMENT_TARGET=#{MacOS.version}"
    bin.install "./Builds/MacOSX/build/Release/routemidi"
  end

  test do
    assert_match "Usage: routemidi", shell_output("#{bin}/routemidi")
  end
end
