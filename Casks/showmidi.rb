cask "showmidi" do
  version "0.9.0"
  sha256 "edc3ab0041dfba7a308f06894de817f8c57d3cb650332c78ae496df020ee386b"

  url "https://github.com/gbevin/ShowMIDI/releases/download/#{version}/ShowMIDI-macOS-#{version}.zip"
  name "ShowMIDI"
  desc "A multi-platform GUI application to effortlessly visualize MIDI activity"
  homepage "https://github.com/gbevin/ShowMIDI"

  pkg "ShowMIDI-#{version}.pkg"

  uninstall pkgutil: [
    "com.uwyn.ShowMIDI-LV2-1",
    "com.uwyn.ShowMIDI-CLAP-1",
    "com.uwyn.ShowMIDI-VST",
    "com.uwyn.ShowMIDI",
    "com.uwyn.ShowMIDI-VST3",
    "com.uwyn.ShowMIDI-AU",
  ]
end